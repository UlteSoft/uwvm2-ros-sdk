//! Generated complete bounded values; all allocation is explicit.
const std=@import("std");
const wire=@import("roswire");
/// @brief Complete ROS 1 interbotix_xs_msgs/ArmJoy value.
/// @details All 12 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
/// and is identified by UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsArmJoy=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/ArmJoy in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=12;
 /// @brief Canonical codec identity of interbotix_xs_msgs/ArmJoy.
 /// @details Exact identity UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3";
 /// @brief Original ROS type name for interbotix_xs_msgs/ArmJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/ArmJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/ArmJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_X_INC: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_X_INC: i8=1;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_X_DEC: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_X_DEC: i8=2;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_Y_INC: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Y_INC: i8=3;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_Y_DEC: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Y_DEC: i8=4;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_Z_INC: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Z_INC: i8=5;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_Z_DEC: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Z_DEC: i8=6;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_ROLL_CCW: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_ROLL_CCW: i8=7;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_ROLL_CW: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_ROLL_CW: i8=8;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_PITCH_UP: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_PITCH_UP: i8=9;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_PITCH_DOWN: original int8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_PITCH_DOWN: i8=10;
 /// @brief interbotix_xs_msgs/ArmJoy.WAIST_CCW: original int8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WAIST_CCW: i8=11;
 /// @brief interbotix_xs_msgs/ArmJoy.WAIST_CW: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WAIST_CW: i8=12;
 /// @brief interbotix_xs_msgs/ArmJoy.GRIPPER_OPEN: original int8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_OPEN: i8=13;
 /// @brief interbotix_xs_msgs/ArmJoy.GRIPPER_CLOSE: original int8 constant.
 /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_CLOSE: i8=14;
 /// @brief interbotix_xs_msgs/ArmJoy.HOME_POSE: original int8 constant.
 /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_HOME_POSE: i8=15;
 /// @brief interbotix_xs_msgs/ArmJoy.SLEEP_POSE: original int8 constant.
 /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SLEEP_POSE: i8=16;
 /// @brief interbotix_xs_msgs/ArmJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_INC: i8=17;
 /// @brief interbotix_xs_msgs/ArmJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_DEC: i8=18;
 /// @brief interbotix_xs_msgs/ArmJoy.SPEED_COURSE: original int8 constant.
 /// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_COURSE: i8=19;
 /// @brief interbotix_xs_msgs/ArmJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_FINE: i8=20;
 /// @brief interbotix_xs_msgs/ArmJoy.GRIPPER_PWM_INC: original int8 constant.
 /// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_PWM_INC: i8=21;
 /// @brief interbotix_xs_msgs/ArmJoy.GRIPPER_PWM_DEC: original int8 constant.
 /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_PWM_DEC: i8=22;
 /// @brief interbotix_xs_msgs/ArmJoy.TORQUE_ON: original int8 constant.
 /// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_TORQUE_ON: i8=23;
 /// @brief interbotix_xs_msgs/ArmJoy.TORQUE_OFF: original int8 constant.
 /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_TORQUE_OFF: i8=24;
 /// @brief interbotix_xs_msgs/ArmJoy.ee_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_x_cmd: i8=0,
 /// @brief interbotix_xs_msgs/ArmJoy.ee_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_y_cmd: i8=0,
 /// @brief interbotix_xs_msgs/ArmJoy.ee_z_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_z_cmd: i8=0,
 /// @brief interbotix_xs_msgs/ArmJoy.ee_roll_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_roll_cmd: i8=0,
 /// @brief interbotix_xs_msgs/ArmJoy.ee_pitch_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_pitch_cmd: i8=0,
 /// @brief interbotix_xs_msgs/ArmJoy.waist_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_waist_cmd: i8=0,
 /// @brief interbotix_xs_msgs/ArmJoy.gripper_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_gripper_cmd: i8=0,
 /// @brief interbotix_xs_msgs/ArmJoy.pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_pose_cmd: i8=0,
 /// @brief interbotix_xs_msgs/ArmJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_cmd: i8=0,
 /// @brief interbotix_xs_msgs/ArmJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_toggle_cmd: i8=0,
 /// @brief interbotix_xs_msgs/ArmJoy.gripper_pwm_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_gripper_pwm_cmd: i8=0,
 /// @brief interbotix_xs_msgs/ArmJoy.torque_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 field_torque_cmd: i8=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/ArmJoy.
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
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/ArmJoy.
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
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Encode one complete interbotix_xs_msgs/ArmJoy value.
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
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/ArmJoy value.
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
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>12) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/HexJoy value.
/// @details All 17 declared fields are retained in source order. The canonical representation occupies 17..17 bytes
/// and is identified by UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsHexJoy=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/HexJoy in bytes.
 /// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=17;
 /// @brief Canonical codec identity of interbotix_xs_msgs/HexJoy.
 /// @details Exact identity UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37";
 /// @brief Original ROS type name for interbotix_xs_msgs/HexJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/HexJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/HexJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/HexJoy.WORLD_X_INC: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WORLD_X_INC: i8=1;
 /// @brief interbotix_xs_msgs/HexJoy.WORLD_X_DEC: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WORLD_X_DEC: i8=2;
 /// @brief interbotix_xs_msgs/HexJoy.WORLD_Y_INC: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WORLD_Y_INC: i8=3;
 /// @brief interbotix_xs_msgs/HexJoy.WORLD_Y_DEC: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WORLD_Y_DEC: i8=4;
 /// @brief interbotix_xs_msgs/HexJoy.WORLD_YAW_CCW: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WORLD_YAW_CCW: i8=5;
 /// @brief interbotix_xs_msgs/HexJoy.WORLD_YAW_CW: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WORLD_YAW_CW: i8=6;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_X_INC: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_X_INC: i8=7;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_X_DEC: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_X_DEC: i8=8;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_Y_INC: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_Y_INC: i8=9;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_Y_DEC: original int8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_Y_DEC: i8=10;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_Z_INC: original int8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_Z_INC: i8=11;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_Z_DEC: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_Z_DEC: i8=12;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_ROLL_CCW: original int8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_ROLL_CCW: i8=13;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_ROLL_CW: original int8 constant.
 /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_ROLL_CW: i8=14;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_PITCH_UP: original int8 constant.
 /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_PITCH_UP: i8=15;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_PITCH_DOWN: original int8 constant.
 /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PLACE_PITCH_DOWN: i8=16;
 /// @brief interbotix_xs_msgs/HexJoy.MOVE_HEXAPOD: original int8 constant.
 /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_MOVE_HEXAPOD: i8=17;
 /// @brief interbotix_xs_msgs/HexJoy.MOVE_LEG: original int8 constant.
 /// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_MOVE_LEG: i8=18;
 /// @brief interbotix_xs_msgs/HexJoy.HOME_POSE: original int8 constant.
 /// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_HOME_POSE: i8=19;
 /// @brief interbotix_xs_msgs/HexJoy.SLEEP_POSE: original int8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SLEEP_POSE: i8=20;
 /// @brief interbotix_xs_msgs/HexJoy.GAIT_NEXT: original int8 constant.
 /// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GAIT_NEXT: i8=21;
 /// @brief interbotix_xs_msgs/HexJoy.GAIT_PREVIOUS: original int8 constant.
 /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GAIT_PREVIOUS: i8=22;
 /// @brief interbotix_xs_msgs/HexJoy.LEG_NEXT: original int8 constant.
 /// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_LEG_NEXT: i8=23;
 /// @brief interbotix_xs_msgs/HexJoy.LEG_PREVIOUS: original int8 constant.
 /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_LEG_PREVIOUS: i8=24;
 /// @brief interbotix_xs_msgs/HexJoy.WIDEN_STANCE: original int8 constant.
 /// @details Exact admitted value 25. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WIDEN_STANCE: i8=25;
 /// @brief interbotix_xs_msgs/HexJoy.NARROW_STANCE: original int8 constant.
 /// @details Exact admitted value 26. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_NARROW_STANCE: i8=26;
 /// @brief interbotix_xs_msgs/HexJoy.REBOOT_MOTORS: original int8 constant.
 /// @details Exact admitted value 27. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_REBOOT_MOTORS: i8=27;
 /// @brief interbotix_xs_msgs/HexJoy.SET_HOME_POSE: original int8 constant.
 /// @details Exact admitted value 28. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SET_HOME_POSE: i8=28;
 /// @brief interbotix_xs_msgs/HexJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 29. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_INC: i8=29;
 /// @brief interbotix_xs_msgs/HexJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 30. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_DEC: i8=30;
 /// @brief interbotix_xs_msgs/HexJoy.SPEED_COURSE: original int8 constant.
 /// @details Exact admitted value 31. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_COURSE: i8=31;
 /// @brief interbotix_xs_msgs/HexJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 32. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_FINE: i8=32;
 /// @brief interbotix_xs_msgs/HexJoy.world_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_world_x_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.world_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_world_y_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.world_yaw_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_world_yaw_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.place_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_place_x_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.place_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_place_y_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.place_z_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_place_z_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.place_roll_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_place_roll_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.place_pitch_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_place_pitch_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_pose_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.move_type_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_move_type_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.gait_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_gait_toggle_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.leg_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_leg_toggle_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.stance_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_stance_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.reboot_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_reboot_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.set_home_pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_set_home_pose_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_cmd: i8=0,
 /// @brief interbotix_xs_msgs/HexJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_toggle_cmd: i8=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/HexJoy.
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
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/HexJoy.
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
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Encode one complete interbotix_xs_msgs/HexJoy value.
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
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/HexJoy value.
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
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<17 or bytes.len>17) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/JointGroupCommand value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..392 bytes
/// and is identified by UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsJointGroupCommand=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/JointGroupCommand in bytes.
 /// @details The inclusive bound is 392 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=392;
 /// @brief Canonical codec identity of interbotix_xs_msgs/JointGroupCommand.
 /// @details Exact identity UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec";
 /// @brief Original ROS type name for interbotix_xs_msgs/JointGroupCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/JointGroupCommand";
 /// @brief Selected original native identity for interbotix_xs_msgs/JointGroupCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/JointGroupCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/JointGroupCommand.cmd: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 field_cmd: []f32=&.{},
 /// @brief Append every canonical field of interbotix_xs_msgs/JointGroupCommand.
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
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_name,128,false);
  if(self.field_cmd.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_cmd.len)));
  for(self.field_cmd) |e| {
  try w.float32(e);
  }
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/JointGroupCommand.
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
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Encode one complete interbotix_xs_msgs/JointGroupCommand value.
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
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/JointGroupCommand value.
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
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>392) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/JointSingleCommand value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
/// and is identified by UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsJointSingleCommand=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/JointSingleCommand in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=136;
 /// @brief Canonical codec identity of interbotix_xs_msgs/JointSingleCommand.
 /// @details Exact identity UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0";
 /// @brief Original ROS type name for interbotix_xs_msgs/JointSingleCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/JointSingleCommand";
 /// @brief Selected original native identity for interbotix_xs_msgs/JointSingleCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/JointSingleCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/JointSingleCommand.cmd: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 field_cmd: f32=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/JointSingleCommand.
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
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_name,128,false);
  try w.float32(self.field_cmd);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/JointSingleCommand.
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
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_name=try r.string(128,false);
  value.field_cmd=try r.float32();
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/JointSingleCommand value.
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
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/JointSingleCommand value.
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
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>136) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/JointTemps value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8712 bytes
/// and is identified by UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsJointTemps=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/JointTemps in bytes.
 /// @details The inclusive bound is 8712 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=8712;
 /// @brief Canonical codec identity of interbotix_xs_msgs/JointTemps.
 /// @details Exact identity UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511";
 /// @brief Original ROS type name for interbotix_xs_msgs/JointTemps.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/JointTemps";
 /// @brief Selected original native identity for interbotix_xs_msgs/JointTemps.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/JointTemps.names: string; 0..64 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/zig/API.md
 field_names: [][]const u8=&.{},
 /// @brief interbotix_xs_msgs/JointTemps.temps: int32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/zig/API.md
 field_temps: []i32=&.{},
 /// @brief Append every canonical field of interbotix_xs_msgs/JointTemps.
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
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/JointTemps.
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
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Encode one complete interbotix_xs_msgs/JointTemps value.
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
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/JointTemps value.
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
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8712) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 time value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Time=struct {
 /// @brief Maximum canonical extent of time in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Time; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of time.
 /// @details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Time; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
 /// @brief Original ROS type name for time.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Time; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="time";
 /// @brief Selected original native identity for time.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Time; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief time.sec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Time; document/platform/trossen/en_US/language/zig/API.md
 field_sec: u32=0,
 /// @brief time.nsec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Time; document/platform/trossen/en_US/language/zig/API.md
 field_nsec: u32=0,
 /// @brief Append every canonical field of time.
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
 /// @see Ros1Time; document/platform/trossen/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Time; document/platform/trossen/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Time; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete time value.
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
 /// @see Ros1Time; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 std_msgs/Header value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..144 bytes
/// and is identified by UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Std_msgsHeader=struct {
 /// @brief Maximum canonical extent of std_msgs/Header in bytes.
 /// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=144;
 /// @brief Canonical codec identity of std_msgs/Header.
 /// @details Exact identity UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
 /// @brief Original ROS type name for std_msgs/Header.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="std_msgs/Header";
 /// @brief Selected original native identity for std_msgs/Header.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief std_msgs/Header.seq: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/zig/API.md
 field_seq: u32=0,
 /// @brief std_msgs/Header.stamp: time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/zig/API.md
 field_stamp: Ros1Time=.{},
 /// @brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/zig/API.md
 field_frame_id: []const u8=&.{},
 /// @brief Append every canonical field of std_msgs/Header.
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
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<16 or bytes.len>144) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 duration value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Duration=struct {
 /// @brief Maximum canonical extent of duration in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Duration; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of duration.
 /// @details Exact identity UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Duration; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8";
 /// @brief Original ROS type name for duration.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Duration; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="duration";
 /// @brief Selected original native identity for duration.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Duration; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief duration.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Duration; document/platform/trossen/en_US/language/zig/API.md
 field_sec: i32=0,
 /// @brief duration.nsec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Duration; document/platform/trossen/en_US/language/zig/API.md
 field_nsec: i32=0,
 /// @brief Append every canonical field of duration.
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
 /// @see Ros1Duration; document/platform/trossen/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Duration; document/platform/trossen/en_US/language/zig/API.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Duration; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete duration value.
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
 /// @see Ros1Duration; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 trajectory_msgs/JointTrajectoryPoint value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 24..536 bytes
/// and is identified by UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Trajectory_msgsJointTrajectoryPoint=struct {
 /// @brief Maximum canonical extent of trajectory_msgs/JointTrajectoryPoint in bytes.
 /// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=536;
 /// @brief Canonical codec identity of trajectory_msgs/JointTrajectoryPoint.
 /// @details Exact identity UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81";
 /// @brief Original ROS type name for trajectory_msgs/JointTrajectoryPoint.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="trajectory_msgs/JointTrajectoryPoint";
 /// @brief Selected original native identity for trajectory_msgs/JointTrajectoryPoint.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief trajectory_msgs/JointTrajectoryPoint.positions: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 field_positions: []f64=&.{},
 /// @brief trajectory_msgs/JointTrajectoryPoint.velocities: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 field_velocities: []f64=&.{},
 /// @brief trajectory_msgs/JointTrajectoryPoint.accelerations: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 field_accelerations: []f64=&.{},
 /// @brief trajectory_msgs/JointTrajectoryPoint.effort: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 field_effort: []f64=&.{},
 /// @brief trajectory_msgs/JointTrajectoryPoint.time_from_start: duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 field_time_from_start: Ros1Duration=.{},
 /// @brief Append every canonical field of trajectory_msgs/JointTrajectoryPoint.
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
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Read the ordered canonical fields of trajectory_msgs/JointTrajectoryPoint.
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
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
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
  value.field_time_from_start=try Ros1Duration.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete trajectory_msgs/JointTrajectoryPoint value.
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
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete trajectory_msgs/JointTrajectoryPoint value.
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
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>536) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 trajectory_msgs/JointTrajectory value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..4408
/// bytes and is identified by UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Trajectory_msgsJointTrajectory=struct {
 /// @brief Maximum canonical extent of trajectory_msgs/JointTrajectory in bytes.
 /// @details The inclusive bound is 4408 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=4408;
 /// @brief Canonical codec identity of trajectory_msgs/JointTrajectory.
 /// @details Exact identity UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9";
 /// @brief Original ROS type name for trajectory_msgs/JointTrajectory.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="trajectory_msgs/JointTrajectory";
 /// @brief Selected original native identity for trajectory_msgs/JointTrajectory.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief trajectory_msgs/JointTrajectory.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 field_header: Ros1Std_msgsHeader=.{},
 /// @brief trajectory_msgs/JointTrajectory.joint_names: string; 0..16 elements; each string is 0..128 bytes;
 /// strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 field_joint_names: [][]const u8=&.{},
 /// @brief trajectory_msgs/JointTrajectory.points: trajectory_msgs/JointTrajectoryPoint; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 field_points: []Ros1Trajectory_msgsJointTrajectoryPoint=&.{},
 /// @brief Append every canonical field of trajectory_msgs/JointTrajectory.
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
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Read the ordered canonical fields of trajectory_msgs/JointTrajectory.
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
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros1Std_msgsHeader.readFields(r,allocator);
  const count1=try r.integer(u32); if(count1>16) return error.Invalid;
  value.field_joint_names=try allocator.alloc([]const u8,count1);
  for(value.field_joint_names) |*e| {
  e.*=try r.string(128,false);
  }
  const count2=try r.integer(u32); if(count2>4) return error.Invalid;
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete trajectory_msgs/JointTrajectory value.
 /// @details Require the complete 24..4408-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>4408) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/JointTrajectoryCommand value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 32..4672
/// bytes and is identified by UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsJointTrajectoryCommand=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/JointTrajectoryCommand in bytes.
 /// @details The inclusive bound is 4672 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=4672;
 /// @brief Canonical codec identity of interbotix_xs_msgs/JointTrajectoryCommand.
 /// @details Exact identity UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7";
 /// @brief Original ROS type name for interbotix_xs_msgs/JointTrajectoryCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/JointTrajectoryCommand";
 /// @brief Selected original native identity for interbotix_xs_msgs/JointTrajectoryCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/JointTrajectoryCommand.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 field_cmd_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/JointTrajectoryCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/JointTrajectoryCommand.traj: trajectory_msgs/JointTrajectory.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 field_traj: Ros1Trajectory_msgsJointTrajectory=.{},
 /// @brief Append every canonical field of interbotix_xs_msgs/JointTrajectoryCommand.
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
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_cmd_type,128,false);
  try w.string(self.field_name,128,false);
  try self.field_traj.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/JointTrajectoryCommand.
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
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_cmd_type=try r.string(128,false);
  value.field_name=try r.string(128,false);
  value.field_traj=try Ros1Trajectory_msgsJointTrajectory.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/JointTrajectoryCommand value.
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
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/JointTrajectoryCommand value.
 /// @details Require the complete 32..4672-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<32 or bytes.len>4672) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/LocobotJoy value.
/// @details All 16 declared fields are retained in source order. The canonical representation occupies 30..30 bytes
/// and is identified by UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsLocobotJoy=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/LocobotJoy in bytes.
 /// @details The inclusive bound is 30 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=30;
 /// @brief Canonical codec identity of interbotix_xs_msgs/LocobotJoy.
 /// @details Exact identity UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613";
 /// @brief Original ROS type name for interbotix_xs_msgs/LocobotJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/LocobotJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/LocobotJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/LocobotJoy.RESET_ODOM: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_RESET_ODOM: i8=1;
 /// @brief interbotix_xs_msgs/LocobotJoy.PAN_CCW: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PAN_CCW: i8=2;
 /// @brief interbotix_xs_msgs/LocobotJoy.PAN_CW: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PAN_CW: i8=3;
 /// @brief interbotix_xs_msgs/LocobotJoy.TILT_UP: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_TILT_UP: i8=4;
 /// @brief interbotix_xs_msgs/LocobotJoy.TILT_DOWN: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_TILT_DOWN: i8=5;
 /// @brief interbotix_xs_msgs/LocobotJoy.PAN_TILT_HOME: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PAN_TILT_HOME: i8=6;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_X_INC: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_X_INC: i8=7;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_X_DEC: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_X_DEC: i8=8;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_Y_INC: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Y_INC: i8=9;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_Y_DEC: original int8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Y_DEC: i8=10;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_Z_INC: original int8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Z_INC: i8=11;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_Z_DEC: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_Z_DEC: i8=12;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_ROLL_CCW: original int8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_ROLL_CCW: i8=13;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_ROLL_CW: original int8 constant.
 /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_ROLL_CW: i8=14;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_PITCH_UP: original int8 constant.
 /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_PITCH_UP: i8=15;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_PITCH_DOWN: original int8 constant.
 /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_EE_PITCH_DOWN: i8=16;
 /// @brief interbotix_xs_msgs/LocobotJoy.WAIST_CCW: original int8 constant.
 /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WAIST_CCW: i8=17;
 /// @brief interbotix_xs_msgs/LocobotJoy.WAIST_CW: original int8 constant.
 /// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_WAIST_CW: i8=18;
 /// @brief interbotix_xs_msgs/LocobotJoy.GRIPPER_OPEN: original int8 constant.
 /// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_OPEN: i8=19;
 /// @brief interbotix_xs_msgs/LocobotJoy.GRIPPER_CLOSE: original int8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_CLOSE: i8=20;
 /// @brief interbotix_xs_msgs/LocobotJoy.HOME_POSE: original int8 constant.
 /// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_HOME_POSE: i8=21;
 /// @brief interbotix_xs_msgs/LocobotJoy.SLEEP_POSE: original int8 constant.
 /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SLEEP_POSE: i8=22;
 /// @brief interbotix_xs_msgs/LocobotJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_INC: i8=23;
 /// @brief interbotix_xs_msgs/LocobotJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_DEC: i8=24;
 /// @brief interbotix_xs_msgs/LocobotJoy.SPEED_COURSE: original int8 constant.
 /// @details Exact admitted value 25. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_COURSE: i8=25;
 /// @brief interbotix_xs_msgs/LocobotJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 26. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_FINE: i8=26;
 /// @brief interbotix_xs_msgs/LocobotJoy.GRIPPER_PWM_INC: original int8 constant.
 /// @details Exact admitted value 27. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_PWM_INC: i8=27;
 /// @brief interbotix_xs_msgs/LocobotJoy.GRIPPER_PWM_DEC: original int8 constant.
 /// @details Exact admitted value 28. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_GRIPPER_PWM_DEC: i8=28;
 /// @brief interbotix_xs_msgs/LocobotJoy.base_x_cmd: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_base_x_cmd: f64=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.base_theta_cmd: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_base_theta_cmd: f64=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.base_reset_odom_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_base_reset_odom_cmd: i8=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.pan_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_pan_cmd: i8=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.tilt_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_tilt_cmd: i8=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.ee_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_x_cmd: i8=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.ee_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_y_cmd: i8=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.ee_z_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_z_cmd: i8=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.ee_roll_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_roll_cmd: i8=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.ee_pitch_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_ee_pitch_cmd: i8=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.waist_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_waist_cmd: i8=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.gripper_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_gripper_cmd: i8=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_pose_cmd: i8=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_cmd: i8=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_toggle_cmd: i8=0,
 /// @brief interbotix_xs_msgs/LocobotJoy.gripper_pwm_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 field_gripper_pwm_cmd: i8=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/LocobotJoy.
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
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/LocobotJoy.
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
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Encode one complete interbotix_xs_msgs/LocobotJoy value.
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
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/LocobotJoy value.
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
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<30 or bytes.len>30) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/MotorGainsRequest value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 36..292 bytes
/// and is identified by UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsMotorGainsRequest=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/MotorGainsRequest in bytes.
 /// @details The inclusive bound is 292 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=292;
 /// @brief Canonical codec identity of interbotix_xs_msgs/MotorGainsRequest.
 /// @details Exact identity UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009";
 /// @brief Original ROS type name for interbotix_xs_msgs/MotorGainsRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/MotorGainsRequest";
 /// @brief Selected original native identity for interbotix_xs_msgs/MotorGainsRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/MotorGainsRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 field_cmd_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/MotorGainsRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/MotorGainsRequest.kp_pos: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 field_kp_pos: i32=0,
 /// @brief interbotix_xs_msgs/MotorGainsRequest.ki_pos: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 field_ki_pos: i32=0,
 /// @brief interbotix_xs_msgs/MotorGainsRequest.kd_pos: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 field_kd_pos: i32=0,
 /// @brief interbotix_xs_msgs/MotorGainsRequest.k1: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 field_k1: i32=0,
 /// @brief interbotix_xs_msgs/MotorGainsRequest.k2: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 field_k2: i32=0,
 /// @brief interbotix_xs_msgs/MotorGainsRequest.kp_vel: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 field_kp_vel: i32=0,
 /// @brief interbotix_xs_msgs/MotorGainsRequest.ki_vel: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 field_ki_vel: i32=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/MotorGainsRequest.
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/MotorGainsRequest.
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Encode one complete interbotix_xs_msgs/MotorGainsRequest value.
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/MotorGainsRequest value.
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<36 or bytes.len>292) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/MotorGainsResponse value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsMotorGainsResponse=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/MotorGainsResponse in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/MotorGainsResponse.
 /// @details Exact identity UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89";
 /// @brief Original ROS type name for interbotix_xs_msgs/MotorGainsResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/MotorGainsResponse";
 /// @brief Selected original native identity for interbotix_xs_msgs/MotorGainsResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/MotorGainsResponse.
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  _=self; _=w;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/MotorGainsResponse.
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  const value: @This()=.{};
  _=r; _=allocator;
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/MotorGainsResponse value.
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/MotorGainsResponse value.
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<0 or bytes.len>0) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/OperatingModesRequest value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 24..536 bytes
/// and is identified by UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsOperatingModesRequest=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/OperatingModesRequest in bytes.
 /// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=536;
 /// @brief Canonical codec identity of interbotix_xs_msgs/OperatingModesRequest.
 /// @details Exact identity UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3";
 /// @brief Original ROS type name for interbotix_xs_msgs/OperatingModesRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/OperatingModesRequest";
 /// @brief Selected original native identity for interbotix_xs_msgs/OperatingModesRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/OperatingModesRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/zig/API.md
 field_cmd_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/OperatingModesRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/OperatingModesRequest.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/zig/API.md
 field_mode: []const u8=&.{},
 /// @brief interbotix_xs_msgs/OperatingModesRequest.profile_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/zig/API.md
 field_profile_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/OperatingModesRequest.profile_velocity: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/zig/API.md
 field_profile_velocity: i32=0,
 /// @brief interbotix_xs_msgs/OperatingModesRequest.profile_acceleration: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/zig/API.md
 field_profile_acceleration: i32=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/OperatingModesRequest.
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_cmd_type,128,false);
  try w.string(self.field_name,128,false);
  try w.string(self.field_mode,128,false);
  try w.string(self.field_profile_type,128,false);
  try w.integer(self.field_profile_velocity);
  try w.integer(self.field_profile_acceleration);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/OperatingModesRequest.
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Encode one complete interbotix_xs_msgs/OperatingModesRequest value.
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/OperatingModesRequest value.
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>536) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/OperatingModesResponse value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsOperatingModesResponse=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/OperatingModesResponse in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/OperatingModesResponse.
 /// @details Exact identity UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e";
 /// @brief Original ROS type name for interbotix_xs_msgs/OperatingModesResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/OperatingModesResponse";
 /// @brief Selected original native identity for interbotix_xs_msgs/OperatingModesResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/OperatingModesResponse.
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  _=self; _=w;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/OperatingModesResponse.
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  const value: @This()=.{};
  _=r; _=allocator;
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/OperatingModesResponse value.
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/OperatingModesResponse value.
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<0 or bytes.len>0) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/RebootRequest value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 10..266 bytes
/// and is identified by UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsRebootRequest=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/RebootRequest in bytes.
 /// @details The inclusive bound is 266 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=266;
 /// @brief Canonical codec identity of interbotix_xs_msgs/RebootRequest.
 /// @details Exact identity UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a";
 /// @brief Original ROS type name for interbotix_xs_msgs/RebootRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/RebootRequest";
 /// @brief Selected original native identity for interbotix_xs_msgs/RebootRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/RebootRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/zig/API.md
 field_cmd_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/RebootRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/RebootRequest.enable: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/zig/API.md
 field_enable: bool=false,
 /// @brief interbotix_xs_msgs/RebootRequest.smart_reboot: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/zig/API.md
 field_smart_reboot: bool=false,
 /// @brief Append every canonical field of interbotix_xs_msgs/RebootRequest.
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
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_cmd_type,128,false);
  try w.string(self.field_name,128,false);
  try w.boolean(self.field_enable);
  try w.boolean(self.field_smart_reboot);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/RebootRequest.
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
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_cmd_type=try r.string(128,false);
  value.field_name=try r.string(128,false);
  value.field_enable=try r.boolean();
  value.field_smart_reboot=try r.boolean();
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/RebootRequest value.
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
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/RebootRequest value.
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
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<10 or bytes.len>266) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/RebootResponse value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsRebootResponse=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/RebootResponse in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/RebootResponse.
 /// @details Exact identity UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4";
 /// @brief Original ROS type name for interbotix_xs_msgs/RebootResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/RebootResponse";
 /// @brief Selected original native identity for interbotix_xs_msgs/RebootResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/RebootResponse.
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
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  _=self; _=w;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/RebootResponse.
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
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  const value: @This()=.{};
  _=r; _=allocator;
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/RebootResponse value.
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
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/RebootResponse value.
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
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<0 or bytes.len>0) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/RegisterValuesRequest value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..400 bytes
/// and is identified by UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsRegisterValuesRequest=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/RegisterValuesRequest in bytes.
 /// @details The inclusive bound is 400 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=400;
 /// @brief Canonical codec identity of interbotix_xs_msgs/RegisterValuesRequest.
 /// @details Exact identity UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a";
 /// @brief Original ROS type name for interbotix_xs_msgs/RegisterValuesRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/RegisterValuesRequest";
 /// @brief Selected original native identity for interbotix_xs_msgs/RegisterValuesRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/RegisterValuesRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/zig/API.md
 field_cmd_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/RegisterValuesRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/RegisterValuesRequest.reg: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/zig/API.md
 field_reg: []const u8=&.{},
 /// @brief interbotix_xs_msgs/RegisterValuesRequest.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/zig/API.md
 field_value: i32=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/RegisterValuesRequest.
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_cmd_type,128,false);
  try w.string(self.field_name,128,false);
  try w.string(self.field_reg,128,false);
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/RegisterValuesRequest.
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_cmd_type=try r.string(128,false);
  value.field_name=try r.string(128,false);
  value.field_reg=try r.string(128,false);
  value.field_value=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/RegisterValuesRequest value.
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/RegisterValuesRequest value.
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<16 or bytes.len>400) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/RegisterValuesResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..68 bytes
/// and is identified by UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsRegisterValuesResponse=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/RegisterValuesResponse in bytes.
 /// @details The inclusive bound is 68 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=68;
 /// @brief Canonical codec identity of interbotix_xs_msgs/RegisterValuesResponse.
 /// @details Exact identity UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659";
 /// @brief Original ROS type name for interbotix_xs_msgs/RegisterValuesResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/RegisterValuesResponse";
 /// @brief Selected original native identity for interbotix_xs_msgs/RegisterValuesResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/RegisterValuesResponse.values: int32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/zig/API.md
 field_values: []i32=&.{},
 /// @brief Append every canonical field of interbotix_xs_msgs/RegisterValuesResponse.
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  if(self.field_values.len>16) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_values.len)));
  for(self.field_values) |e| {
  try w.integer(e);
  }
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/RegisterValuesResponse.
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  const count0=try r.integer(u32); if(count0>16) return error.Invalid;
  value.field_values=try allocator.alloc(i32,count0);
  for(value.field_values) |*e| {
  e.*=try r.integer(i32);
  }
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/RegisterValuesResponse value.
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/RegisterValuesResponse value.
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>68) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/RobotInfoRequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..264 bytes
/// and is identified by UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsRobotInfoRequest=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/RobotInfoRequest in bytes.
 /// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=264;
 /// @brief Canonical codec identity of interbotix_xs_msgs/RobotInfoRequest.
 /// @details Exact identity UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176";
 /// @brief Original ROS type name for interbotix_xs_msgs/RobotInfoRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/RobotInfoRequest";
 /// @brief Selected original native identity for interbotix_xs_msgs/RobotInfoRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/RobotInfoRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/zig/API.md
 field_cmd_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/RobotInfoRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief Append every canonical field of interbotix_xs_msgs/RobotInfoRequest.
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_cmd_type,128,false);
  try w.string(self.field_name,128,false);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/RobotInfoRequest.
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_cmd_type=try r.string(128,false);
  value.field_name=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/RobotInfoRequest value.
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/RobotInfoRequest value.
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>264) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/RobotInfoResponse value.
/// @details All 11 declared fields are retained in source order. The canonical representation occupies 42..18474
/// bytes and is identified by UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsRobotInfoResponse=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/RobotInfoResponse in bytes.
 /// @details The inclusive bound is 18474 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=18474;
 /// @brief Canonical codec identity of interbotix_xs_msgs/RobotInfoResponse.
 /// @details Exact identity UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d";
 /// @brief Original ROS type name for interbotix_xs_msgs/RobotInfoResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/RobotInfoResponse";
 /// @brief Selected original native identity for interbotix_xs_msgs/RobotInfoResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/RobotInfoResponse.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 field_mode: []const u8=&.{},
 /// @brief interbotix_xs_msgs/RobotInfoResponse.profile_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 field_profile_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/RobotInfoResponse.joint_names: string; 0..64 elements; each string is 0..128 bytes;
 /// strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 field_joint_names: [][]const u8=&.{},
 /// @brief interbotix_xs_msgs/RobotInfoResponse.joint_ids: int16; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 field_joint_ids: []i16=&.{},
 /// @brief interbotix_xs_msgs/RobotInfoResponse.joint_lower_limits: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 field_joint_lower_limits: []f32=&.{},
 /// @brief interbotix_xs_msgs/RobotInfoResponse.joint_upper_limits: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 field_joint_upper_limits: []f32=&.{},
 /// @brief interbotix_xs_msgs/RobotInfoResponse.joint_velocity_limits: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 field_joint_velocity_limits: []f32=&.{},
 /// @brief interbotix_xs_msgs/RobotInfoResponse.joint_sleep_positions: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 field_joint_sleep_positions: []f32=&.{},
 /// @brief interbotix_xs_msgs/RobotInfoResponse.joint_state_indices: int16; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 field_joint_state_indices: []i16=&.{},
 /// @brief interbotix_xs_msgs/RobotInfoResponse.num_joints: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 field_num_joints: i16=0,
 /// @brief interbotix_xs_msgs/RobotInfoResponse.name: string; 0..64 elements; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 field_name: [][]const u8=&.{},
 /// @brief Append every canonical field of interbotix_xs_msgs/RobotInfoResponse.
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/RobotInfoResponse.
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
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
 /// @brief Encode one complete interbotix_xs_msgs/RobotInfoResponse value.
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/RobotInfoResponse value.
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<42 or bytes.len>18474) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/TorqueEnableRequest value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..265 bytes
/// and is identified by UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsTorqueEnableRequest=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/TorqueEnableRequest in bytes.
 /// @details The inclusive bound is 265 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=265;
 /// @brief Canonical codec identity of interbotix_xs_msgs/TorqueEnableRequest.
 /// @details Exact identity UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a";
 /// @brief Original ROS type name for interbotix_xs_msgs/TorqueEnableRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/TorqueEnableRequest";
 /// @brief Selected original native identity for interbotix_xs_msgs/TorqueEnableRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/TorqueEnableRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/zig/API.md
 field_cmd_type: []const u8=&.{},
 /// @brief interbotix_xs_msgs/TorqueEnableRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/zig/API.md
 field_name: []const u8=&.{},
 /// @brief interbotix_xs_msgs/TorqueEnableRequest.enable: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/zig/API.md
 field_enable: bool=false,
 /// @brief Append every canonical field of interbotix_xs_msgs/TorqueEnableRequest.
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_cmd_type,128,false);
  try w.string(self.field_name,128,false);
  try w.boolean(self.field_enable);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/TorqueEnableRequest.
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_cmd_type=try r.string(128,false);
  value.field_name=try r.string(128,false);
  value.field_enable=try r.boolean();
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/TorqueEnableRequest value.
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/TorqueEnableRequest value.
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<9 or bytes.len>265) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/TorqueEnableResponse value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsTorqueEnableResponse=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/TorqueEnableResponse in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/TorqueEnableResponse.
 /// @details Exact identity UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44";
 /// @brief Original ROS type name for interbotix_xs_msgs/TorqueEnableResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/TorqueEnableResponse";
 /// @brief Selected original native identity for interbotix_xs_msgs/TorqueEnableResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/TorqueEnableResponse.
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  _=self; _=w;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/TorqueEnableResponse.
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  const value: @This()=.{};
  _=r; _=allocator;
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/TorqueEnableResponse value.
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/TorqueEnableResponse value.
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<0 or bytes.len>0) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 interbotix_xs_msgs/TurretJoy value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Interbotix_xs_msgsTurretJoy=struct {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/TurretJoy in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=4;
 /// @brief Canonical codec identity of interbotix_xs_msgs/TurretJoy.
 /// @details Exact identity UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70";
 /// @brief Original ROS type name for interbotix_xs_msgs/TurretJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="interbotix_xs_msgs/TurretJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/TurretJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief interbotix_xs_msgs/TurretJoy.PAN_CCW: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PAN_CCW: i8=1;
 /// @brief interbotix_xs_msgs/TurretJoy.PAN_CW: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PAN_CW: i8=2;
 /// @brief interbotix_xs_msgs/TurretJoy.TILT_UP: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_TILT_UP: i8=3;
 /// @brief interbotix_xs_msgs/TurretJoy.TILT_DOWN: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_TILT_DOWN: i8=4;
 /// @brief interbotix_xs_msgs/TurretJoy.PAN_TILT_HOME: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_PAN_TILT_HOME: i8=5;
 /// @brief interbotix_xs_msgs/TurretJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_INC: i8=6;
 /// @brief interbotix_xs_msgs/TurretJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_DEC: i8=7;
 /// @brief interbotix_xs_msgs/TurretJoy.SPEED_COURSE: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_COURSE: i8=8;
 /// @brief interbotix_xs_msgs/TurretJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub const field_SPEED_FINE: i8=9;
 /// @brief interbotix_xs_msgs/TurretJoy.pan_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 field_pan_cmd: i8=0,
 /// @brief interbotix_xs_msgs/TurretJoy.tilt_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 field_tilt_cmd: i8=0,
 /// @brief interbotix_xs_msgs/TurretJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_cmd: i8=0,
 /// @brief interbotix_xs_msgs/TurretJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 field_speed_toggle_cmd: i8=0,
 /// @brief Append every canonical field of interbotix_xs_msgs/TurretJoy.
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
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_pan_cmd);
  try w.integer(self.field_tilt_cmd);
  try w.integer(self.field_speed_cmd);
  try w.integer(self.field_speed_toggle_cmd);
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/TurretJoy.
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
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_pan_cmd=try r.integer(i8);
  value.field_tilt_cmd=try r.integer(i8);
  value.field_speed_cmd=try r.integer(i8);
  value.field_speed_toggle_cmd=try r.integer(i8);
  return value;
 }
 /// @brief Encode one complete interbotix_xs_msgs/TurretJoy value.
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
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete interbotix_xs_msgs/TurretJoy value.
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
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>4) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/ClearErrRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsClearErrRequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/ClearErrRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=0;
 /// @brief Canonical codec identity of xarm_msgs/ClearErrRequest.
 /// @details Exact identity UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";
 /// @brief Original ROS type name for xarm_msgs/ClearErrRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/ClearErrRequest";
 /// @brief Selected original native identity for xarm_msgs/ClearErrRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief Append every canonical field of xarm_msgs/ClearErrRequest.
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
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  _=self; _=w;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/ClearErrRequest.
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
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  const value: @This()=.{};
  _=r; _=allocator;
  return value;
 }
 /// @brief Encode one complete xarm_msgs/ClearErrRequest value.
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
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/ClearErrRequest value.
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
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<0 or bytes.len>0) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/ClearErrResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
/// and is identified by UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsClearErrResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/ClearErrResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=134;
 /// @brief Canonical codec identity of xarm_msgs/ClearErrResponse.
 /// @details Exact identity UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1";
 /// @brief Original ROS type name for xarm_msgs/ClearErrResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/ClearErrResponse";
 /// @brief Selected original native identity for xarm_msgs/ClearErrResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/ClearErrResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/zig/API.md
 field_ret: i16=0,
 /// @brief xarm_msgs/ClearErrResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/zig/API.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of xarm_msgs/ClearErrResponse.
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
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_ret);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/ClearErrResponse.
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
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_ret=try r.integer(i16);
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/ClearErrResponse value.
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
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/ClearErrResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<6 or bytes.len>134) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/ConfigToolModbusRequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsConfigToolModbusRequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/ConfigToolModbusRequest in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of xarm_msgs/ConfigToolModbusRequest.
 /// @details Exact identity UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5";
 /// @brief Original ROS type name for xarm_msgs/ConfigToolModbusRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/ConfigToolModbusRequest";
 /// @brief Selected original native identity for xarm_msgs/ConfigToolModbusRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/ConfigToolModbusRequest.baud_rate: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 field_baud_rate: i32=0,
 /// @brief xarm_msgs/ConfigToolModbusRequest.timeout_ms: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 field_timeout_ms: i32=0,
 /// @brief Append every canonical field of xarm_msgs/ConfigToolModbusRequest.
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
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_baud_rate);
  try w.integer(self.field_timeout_ms);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/ConfigToolModbusRequest.
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
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_baud_rate=try r.integer(i32);
  value.field_timeout_ms=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/ConfigToolModbusRequest value.
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
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/ConfigToolModbusRequest value.
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
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/ConfigToolModbusResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
/// and is identified by UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsConfigToolModbusResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/ConfigToolModbusResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=134;
 /// @brief Canonical codec identity of xarm_msgs/ConfigToolModbusResponse.
 /// @details Exact identity UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b";
 /// @brief Original ROS type name for xarm_msgs/ConfigToolModbusResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/ConfigToolModbusResponse";
 /// @brief Selected original native identity for xarm_msgs/ConfigToolModbusResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/ConfigToolModbusResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 field_message: []const u8=&.{},
 /// @brief xarm_msgs/ConfigToolModbusResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 field_ret: i16=0,
 /// @brief Append every canonical field of xarm_msgs/ConfigToolModbusResponse.
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
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_message,128,false);
  try w.integer(self.field_ret);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/ConfigToolModbusResponse.
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
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_message=try r.string(128,false);
  value.field_ret=try r.integer(i16);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/ConfigToolModbusResponse value.
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
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/ConfigToolModbusResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<6 or bytes.len>134) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/GetAnalogIORequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 2..2 bytes
/// and is identified by UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsGetAnalogIORequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/GetAnalogIORequest in bytes.
 /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=2;
 /// @brief Canonical codec identity of xarm_msgs/GetAnalogIORequest.
 /// @details Exact identity UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";
 /// @brief Original ROS type name for xarm_msgs/GetAnalogIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/GetAnalogIORequest";
 /// @brief Selected original native identity for xarm_msgs/GetAnalogIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/GetAnalogIORequest.port_num: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/zig/API.md
 field_port_num: i16=0,
 /// @brief Append every canonical field of xarm_msgs/GetAnalogIORequest.
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
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_port_num);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetAnalogIORequest.
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
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_port_num=try r.integer(i16);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/GetAnalogIORequest value.
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
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/GetAnalogIORequest value.
 /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<2 or bytes.len>2) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/GetAnalogIOResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 10..138 bytes
/// and is identified by UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsGetAnalogIOResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/GetAnalogIOResponse in bytes.
 /// @details The inclusive bound is 138 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=138;
 /// @brief Canonical codec identity of xarm_msgs/GetAnalogIOResponse.
 /// @details Exact identity UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968";
 /// @brief Original ROS type name for xarm_msgs/GetAnalogIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/GetAnalogIOResponse";
 /// @brief Selected original native identity for xarm_msgs/GetAnalogIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/GetAnalogIOResponse.analog_value: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/zig/API.md
 field_analog_value: f32=0,
 /// @brief xarm_msgs/GetAnalogIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/zig/API.md
 field_ret: i16=0,
 /// @brief xarm_msgs/GetAnalogIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/zig/API.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of xarm_msgs/GetAnalogIOResponse.
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
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.float32(self.field_analog_value);
  try w.integer(self.field_ret);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetAnalogIOResponse.
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
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_analog_value=try r.float32();
  value.field_ret=try r.integer(i16);
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/GetAnalogIOResponse value.
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
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/GetAnalogIOResponse value.
 /// @details Require the complete 10..138-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<10 or bytes.len>138) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/GetControllerDigitalIORequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 2..2 bytes
/// and is identified by UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsGetControllerDigitalIORequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/GetControllerDigitalIORequest in bytes.
 /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=2;
 /// @brief Canonical codec identity of xarm_msgs/GetControllerDigitalIORequest.
 /// @details Exact identity UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c";
 /// @brief Original ROS type name for xarm_msgs/GetControllerDigitalIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/GetControllerDigitalIORequest";
 /// @brief Selected original native identity for xarm_msgs/GetControllerDigitalIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/GetControllerDigitalIORequest.io_num: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 field_io_num: i16=0,
 /// @brief Append every canonical field of xarm_msgs/GetControllerDigitalIORequest.
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_io_num);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetControllerDigitalIORequest.
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_io_num=try r.integer(i16);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/GetControllerDigitalIORequest value.
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/GetControllerDigitalIORequest value.
 /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<2 or bytes.len>2) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/GetControllerDigitalIOResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
/// and is identified by UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsGetControllerDigitalIOResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/GetControllerDigitalIOResponse in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=136;
 /// @brief Canonical codec identity of xarm_msgs/GetControllerDigitalIOResponse.
 /// @details Exact identity UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3";
 /// @brief Original ROS type name for xarm_msgs/GetControllerDigitalIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/GetControllerDigitalIOResponse";
 /// @brief Selected original native identity for xarm_msgs/GetControllerDigitalIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/GetControllerDigitalIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 field_ret: i16=0,
 /// @brief xarm_msgs/GetControllerDigitalIOResponse.value: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 field_value: i16=0,
 /// @brief xarm_msgs/GetControllerDigitalIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of xarm_msgs/GetControllerDigitalIOResponse.
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_ret);
  try w.integer(self.field_value);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetControllerDigitalIOResponse.
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_ret=try r.integer(i16);
  value.field_value=try r.integer(i16);
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/GetControllerDigitalIOResponse value.
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/GetControllerDigitalIOResponse value.
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>136) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/GetDigitalIORequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsGetDigitalIORequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/GetDigitalIORequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=0;
 /// @brief Canonical codec identity of xarm_msgs/GetDigitalIORequest.
 /// @details Exact identity UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";
 /// @brief Original ROS type name for xarm_msgs/GetDigitalIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/GetDigitalIORequest";
 /// @brief Selected original native identity for xarm_msgs/GetDigitalIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief Append every canonical field of xarm_msgs/GetDigitalIORequest.
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
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  _=self; _=w;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetDigitalIORequest.
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
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  const value: @This()=.{};
  _=r; _=allocator;
  return value;
 }
 /// @brief Encode one complete xarm_msgs/GetDigitalIORequest value.
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
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/GetDigitalIORequest value.
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
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<0 or bytes.len>0) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/GetDigitalIOResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 14..142 bytes
/// and is identified by UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsGetDigitalIOResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/GetDigitalIOResponse in bytes.
 /// @details The inclusive bound is 142 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=142;
 /// @brief Canonical codec identity of xarm_msgs/GetDigitalIOResponse.
 /// @details Exact identity UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2";
 /// @brief Original ROS type name for xarm_msgs/GetDigitalIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/GetDigitalIOResponse";
 /// @brief Selected original native identity for xarm_msgs/GetDigitalIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/GetDigitalIOResponse.digital_1: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 field_digital_1: i32=0,
 /// @brief xarm_msgs/GetDigitalIOResponse.digital_2: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 field_digital_2: i32=0,
 /// @brief xarm_msgs/GetDigitalIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 field_ret: i16=0,
 /// @brief xarm_msgs/GetDigitalIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of xarm_msgs/GetDigitalIOResponse.
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
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_digital_1);
  try w.integer(self.field_digital_2);
  try w.integer(self.field_ret);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetDigitalIOResponse.
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
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_digital_1=try r.integer(i32);
  value.field_digital_2=try r.integer(i32);
  value.field_ret=try r.integer(i16);
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/GetDigitalIOResponse value.
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
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/GetDigitalIOResponse value.
 /// @details Require the complete 14..142-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<14 or bytes.len>142) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/GetErrRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsGetErrRequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/GetErrRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=0;
 /// @brief Canonical codec identity of xarm_msgs/GetErrRequest.
 /// @details Exact identity UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531";
 /// @brief Original ROS type name for xarm_msgs/GetErrRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/GetErrRequest";
 /// @brief Selected original native identity for xarm_msgs/GetErrRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief Append every canonical field of xarm_msgs/GetErrRequest.
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
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  _=self; _=w;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetErrRequest.
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
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  const value: @This()=.{};
  _=r; _=allocator;
  return value;
 }
 /// @brief Encode one complete xarm_msgs/GetErrRequest value.
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
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/GetErrRequest value.
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
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<0 or bytes.len>0) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/GetErrResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
/// and is identified by UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsGetErrResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/GetErrResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=134;
 /// @brief Canonical codec identity of xarm_msgs/GetErrResponse.
 /// @details Exact identity UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037";
 /// @brief Original ROS type name for xarm_msgs/GetErrResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/GetErrResponse";
 /// @brief Selected original native identity for xarm_msgs/GetErrResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/GetErrResponse.err: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/zig/API.md
 field_err: i16=0,
 /// @brief xarm_msgs/GetErrResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/zig/API.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of xarm_msgs/GetErrResponse.
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
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_err);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetErrResponse.
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
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_err=try r.integer(i16);
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/GetErrResponse value.
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
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/GetErrResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<6 or bytes.len>134) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/GripperConfigRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsGripperConfigRequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/GripperConfigRequest in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=4;
 /// @brief Canonical codec identity of xarm_msgs/GripperConfigRequest.
 /// @details Exact identity UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4";
 /// @brief Original ROS type name for xarm_msgs/GripperConfigRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/GripperConfigRequest";
 /// @brief Selected original native identity for xarm_msgs/GripperConfigRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/GripperConfigRequest.pulse_vel: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/zig/API.md
 field_pulse_vel: f32=0,
 /// @brief Append every canonical field of xarm_msgs/GripperConfigRequest.
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
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.float32(self.field_pulse_vel);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperConfigRequest.
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
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_pulse_vel=try r.float32();
  return value;
 }
 /// @brief Encode one complete xarm_msgs/GripperConfigRequest value.
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
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/GripperConfigRequest value.
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
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>4) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/GripperConfigResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
/// and is identified by UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsGripperConfigResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/GripperConfigResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=134;
 /// @brief Canonical codec identity of xarm_msgs/GripperConfigResponse.
 /// @details Exact identity UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5";
 /// @brief Original ROS type name for xarm_msgs/GripperConfigResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/GripperConfigResponse";
 /// @brief Selected original native identity for xarm_msgs/GripperConfigResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/GripperConfigResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/zig/API.md
 field_ret: i16=0,
 /// @brief xarm_msgs/GripperConfigResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/zig/API.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of xarm_msgs/GripperConfigResponse.
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
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_ret);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperConfigResponse.
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
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_ret=try r.integer(i16);
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/GripperConfigResponse value.
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
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/GripperConfigResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<6 or bytes.len>134) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/GripperMoveRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsGripperMoveRequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/GripperMoveRequest in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=4;
 /// @brief Canonical codec identity of xarm_msgs/GripperMoveRequest.
 /// @details Exact identity UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2";
 /// @brief Original ROS type name for xarm_msgs/GripperMoveRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/GripperMoveRequest";
 /// @brief Selected original native identity for xarm_msgs/GripperMoveRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/GripperMoveRequest.pulse_pos: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 field_pulse_pos: f32=0,
 /// @brief Append every canonical field of xarm_msgs/GripperMoveRequest.
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
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.float32(self.field_pulse_pos);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperMoveRequest.
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
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_pulse_pos=try r.float32();
  return value;
 }
 /// @brief Encode one complete xarm_msgs/GripperMoveRequest value.
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
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/GripperMoveRequest value.
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
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>4) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/GripperMoveResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
/// and is identified by UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsGripperMoveResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/GripperMoveResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=134;
 /// @brief Canonical codec identity of xarm_msgs/GripperMoveResponse.
 /// @details Exact identity UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998";
 /// @brief Original ROS type name for xarm_msgs/GripperMoveResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/GripperMoveResponse";
 /// @brief Selected original native identity for xarm_msgs/GripperMoveResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/GripperMoveResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 field_ret: i16=0,
 /// @brief xarm_msgs/GripperMoveResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of xarm_msgs/GripperMoveResponse.
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
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_ret);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperMoveResponse.
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
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_ret=try r.integer(i16);
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/GripperMoveResponse value.
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
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/GripperMoveResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<6 or bytes.len>134) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/GripperStateRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsGripperStateRequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/GripperStateRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=0;
 /// @brief Canonical codec identity of xarm_msgs/GripperStateRequest.
 /// @details Exact identity UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d";
 /// @brief Original ROS type name for xarm_msgs/GripperStateRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/GripperStateRequest";
 /// @brief Selected original native identity for xarm_msgs/GripperStateRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief Append every canonical field of xarm_msgs/GripperStateRequest.
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
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  _=self; _=w;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperStateRequest.
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
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  const value: @This()=.{};
  _=r; _=allocator;
  return value;
 }
 /// @brief Encode one complete xarm_msgs/GripperStateRequest value.
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
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/GripperStateRequest value.
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
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<0 or bytes.len>0) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/GripperStateResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..6 bytes
/// and is identified by UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsGripperStateResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/GripperStateResponse in bytes.
 /// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=6;
 /// @brief Canonical codec identity of xarm_msgs/GripperStateResponse.
 /// @details Exact identity UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4";
 /// @brief Original ROS type name for xarm_msgs/GripperStateResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/GripperStateResponse";
 /// @brief Selected original native identity for xarm_msgs/GripperStateResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/GripperStateResponse.curr_pos: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/zig/API.md
 field_curr_pos: f32=0,
 /// @brief xarm_msgs/GripperStateResponse.err_code: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/zig/API.md
 field_err_code: i16=0,
 /// @brief Append every canonical field of xarm_msgs/GripperStateResponse.
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
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.float32(self.field_curr_pos);
  try w.integer(self.field_err_code);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperStateResponse.
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
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_curr_pos=try r.float32();
  value.field_err_code=try r.integer(i16);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/GripperStateResponse value.
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
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/GripperStateResponse value.
 /// @details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<6 or bytes.len>6) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/IOState value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16 bytes
/// and is identified by UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsIOState=struct {
 /// @brief Maximum canonical extent of xarm_msgs/IOState in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=16;
 /// @brief Canonical codec identity of xarm_msgs/IOState.
 /// @details Exact identity UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
 /// @brief Original ROS type name for xarm_msgs/IOState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/IOState";
 /// @brief Selected original native identity for xarm_msgs/IOState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/IOState.digital_1: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/zig/API.md
 field_digital_1: i32=0,
 /// @brief xarm_msgs/IOState.digital_2: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/zig/API.md
 field_digital_2: i32=0,
 /// @brief xarm_msgs/IOState.analog_1: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/zig/API.md
 field_analog_1: f32=0,
 /// @brief xarm_msgs/IOState.analog_2: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/zig/API.md
 field_analog_2: f32=0,
 /// @brief Append every canonical field of xarm_msgs/IOState.
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
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_digital_1);
  try w.integer(self.field_digital_2);
  try w.float32(self.field_analog_1);
  try w.float32(self.field_analog_2);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/IOState.
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
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_digital_1=try r.integer(i32);
  value.field_digital_2=try r.integer(i32);
  value.field_analog_1=try r.float32();
  value.field_analog_2=try r.float32();
  return value;
 }
 /// @brief Encode one complete xarm_msgs/IOState value.
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
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/IOState value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<16 or bytes.len>16) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/MoveRequest value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 20..84 bytes
/// and is identified by UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsMoveRequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/MoveRequest in bytes.
 /// @details The inclusive bound is 84 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=84;
 /// @brief Canonical codec identity of xarm_msgs/MoveRequest.
 /// @details Exact identity UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5";
 /// @brief Original ROS type name for xarm_msgs/MoveRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/MoveRequest";
 /// @brief Selected original native identity for xarm_msgs/MoveRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/MoveRequest.pose: float32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 field_pose: []f32=&.{},
 /// @brief xarm_msgs/MoveRequest.mvvelo: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 field_mvvelo: f32=0,
 /// @brief xarm_msgs/MoveRequest.mvacc: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 field_mvacc: f32=0,
 /// @brief xarm_msgs/MoveRequest.mvtime: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 field_mvtime: f32=0,
 /// @brief xarm_msgs/MoveRequest.mvradii: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 field_mvradii: f32=0,
 /// @brief Append every canonical field of xarm_msgs/MoveRequest.
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
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  if(self.field_pose.len>16) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_pose.len)));
  for(self.field_pose) |e| {
  try w.float32(e);
  }
  try w.float32(self.field_mvvelo);
  try w.float32(self.field_mvacc);
  try w.float32(self.field_mvtime);
  try w.float32(self.field_mvradii);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/MoveRequest.
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
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  const count0=try r.integer(u32); if(count0>16) return error.Invalid;
  value.field_pose=try allocator.alloc(f32,count0);
  for(value.field_pose) |*e| {
  e.*=try r.float32();
  }
  value.field_mvvelo=try r.float32();
  value.field_mvacc=try r.float32();
  value.field_mvtime=try r.float32();
  value.field_mvradii=try r.float32();
  return value;
 }
 /// @brief Encode one complete xarm_msgs/MoveRequest value.
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
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/MoveRequest value.
 /// @details Require the complete 20..84-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<20 or bytes.len>84) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/MoveResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
/// and is identified by UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsMoveResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/MoveResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=134;
 /// @brief Canonical codec identity of xarm_msgs/MoveResponse.
 /// @details Exact identity UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658";
 /// @brief Original ROS type name for xarm_msgs/MoveResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/MoveResponse";
 /// @brief Selected original native identity for xarm_msgs/MoveResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/MoveResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 field_ret: i16=0,
 /// @brief xarm_msgs/MoveResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of xarm_msgs/MoveResponse.
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
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_ret);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/MoveResponse.
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
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_ret=try r.integer(i16);
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/MoveResponse value.
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
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/MoveResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<6 or bytes.len>134) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/RobotMsg value.
/// @details All 10 declared fields are retained in source order. The canonical representation occupies 66..130
/// bytes and is identified by UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsRobotMsg=struct {
 /// @brief Maximum canonical extent of xarm_msgs/RobotMsg in bytes.
 /// @details The inclusive bound is 130 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=130;
 /// @brief Canonical codec identity of xarm_msgs/RobotMsg.
 /// @details Exact identity UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41";
 /// @brief Original ROS type name for xarm_msgs/RobotMsg.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/RobotMsg";
 /// @brief Selected original native identity for xarm_msgs/RobotMsg.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/RobotMsg.state: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 field_state: i16=0,
 /// @brief xarm_msgs/RobotMsg.mode: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 field_mode: i16=0,
 /// @brief xarm_msgs/RobotMsg.cmdnum: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 field_cmdnum: i16=0,
 /// @brief xarm_msgs/RobotMsg.mt_brake: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 field_mt_brake: i16=0,
 /// @brief xarm_msgs/RobotMsg.mt_able: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 field_mt_able: i16=0,
 /// @brief xarm_msgs/RobotMsg.err: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 field_err: i16=0,
 /// @brief xarm_msgs/RobotMsg.warn: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 field_warn: i16=0,
 /// @brief xarm_msgs/RobotMsg.angle: float32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 field_angle: []f32=&.{},
 /// @brief xarm_msgs/RobotMsg.pose: float32; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 field_pose: [6]f32=[_]f32{0} ** 6,
 /// @brief xarm_msgs/RobotMsg.offset: float32; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 field_offset: [6]f32=[_]f32{0} ** 6,
 /// @brief Append every canonical field of xarm_msgs/RobotMsg.
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
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_state);
  try w.integer(self.field_mode);
  try w.integer(self.field_cmdnum);
  try w.integer(self.field_mt_brake);
  try w.integer(self.field_mt_able);
  try w.integer(self.field_err);
  try w.integer(self.field_warn);
  if(self.field_angle.len>16) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_angle.len)));
  for(self.field_angle) |e| {
  try w.float32(e);
  }
  for(self.field_pose) |e| {
  try w.float32(e);
  }
  for(self.field_offset) |e| {
  try w.float32(e);
  }
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/RobotMsg.
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
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_state=try r.integer(i16);
  value.field_mode=try r.integer(i16);
  value.field_cmdnum=try r.integer(i16);
  value.field_mt_brake=try r.integer(i16);
  value.field_mt_able=try r.integer(i16);
  value.field_err=try r.integer(i16);
  value.field_warn=try r.integer(i16);
  const count7=try r.integer(u32); if(count7>16) return error.Invalid;
  value.field_angle=try allocator.alloc(f32,count7);
  for(value.field_angle) |*e| {
  e.*=try r.float32();
  }
  for(&value.field_pose) |*e| {
  e.*=try r.float32();
  }
  for(&value.field_offset) |*e| {
  e.*=try r.float32();
  }
  return value;
 }
 /// @brief Encode one complete xarm_msgs/RobotMsg value.
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
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/RobotMsg value.
 /// @details Require the complete 66..130-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<66 or bytes.len>130) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/SetAxisRequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsSetAxisRequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/SetAxisRequest in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=4;
 /// @brief Canonical codec identity of xarm_msgs/SetAxisRequest.
 /// @details Exact identity UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";
 /// @brief Original ROS type name for xarm_msgs/SetAxisRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/SetAxisRequest";
 /// @brief Selected original native identity for xarm_msgs/SetAxisRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/SetAxisRequest.id: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/zig/API.md
 field_id: i16=0,
 /// @brief xarm_msgs/SetAxisRequest.data: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/zig/API.md
 field_data: i16=0,
 /// @brief Append every canonical field of xarm_msgs/SetAxisRequest.
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
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_id);
  try w.integer(self.field_data);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetAxisRequest.
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
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_id=try r.integer(i16);
  value.field_data=try r.integer(i16);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/SetAxisRequest value.
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
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/SetAxisRequest value.
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
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>4) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/SetAxisResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
/// and is identified by UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsSetAxisResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/SetAxisResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=134;
 /// @brief Canonical codec identity of xarm_msgs/SetAxisResponse.
 /// @details Exact identity UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7";
 /// @brief Original ROS type name for xarm_msgs/SetAxisResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/SetAxisResponse";
 /// @brief Selected original native identity for xarm_msgs/SetAxisResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/SetAxisResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/zig/API.md
 field_ret: i16=0,
 /// @brief xarm_msgs/SetAxisResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/zig/API.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of xarm_msgs/SetAxisResponse.
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
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_ret);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetAxisResponse.
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
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_ret=try r.integer(i16);
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/SetAxisResponse value.
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
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/SetAxisResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<6 or bytes.len>134) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/SetDigitalIORequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsSetDigitalIORequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/SetDigitalIORequest in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=4;
 /// @brief Canonical codec identity of xarm_msgs/SetDigitalIORequest.
 /// @details Exact identity UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";
 /// @brief Original ROS type name for xarm_msgs/SetDigitalIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/SetDigitalIORequest";
 /// @brief Selected original native identity for xarm_msgs/SetDigitalIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/SetDigitalIORequest.io_num: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 field_io_num: i16=0,
 /// @brief xarm_msgs/SetDigitalIORequest.value: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 field_value: i16=0,
 /// @brief Append every canonical field of xarm_msgs/SetDigitalIORequest.
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
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_io_num);
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetDigitalIORequest.
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
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_io_num=try r.integer(i16);
  value.field_value=try r.integer(i16);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/SetDigitalIORequest value.
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
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/SetDigitalIORequest value.
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
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>4) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/SetDigitalIOResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
/// and is identified by UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsSetDigitalIOResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/SetDigitalIOResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=134;
 /// @brief Canonical codec identity of xarm_msgs/SetDigitalIOResponse.
 /// @details Exact identity UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c";
 /// @brief Original ROS type name for xarm_msgs/SetDigitalIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/SetDigitalIOResponse";
 /// @brief Selected original native identity for xarm_msgs/SetDigitalIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/SetDigitalIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 field_ret: i16=0,
 /// @brief xarm_msgs/SetDigitalIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of xarm_msgs/SetDigitalIOResponse.
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
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_ret);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetDigitalIOResponse.
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
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_ret=try r.integer(i16);
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/SetDigitalIOResponse value.
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
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/SetDigitalIOResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<6 or bytes.len>134) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/SetInt16Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 2..2 bytes
/// and is identified by UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsSetInt16Request=struct {
 /// @brief Maximum canonical extent of xarm_msgs/SetInt16Request in bytes.
 /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=2;
 /// @brief Canonical codec identity of xarm_msgs/SetInt16Request.
 /// @details Exact identity UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";
 /// @brief Original ROS type name for xarm_msgs/SetInt16Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/SetInt16Request";
 /// @brief Selected original native identity for xarm_msgs/SetInt16Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/SetInt16Request.data: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/zig/API.md
 field_data: i16=0,
 /// @brief Append every canonical field of xarm_msgs/SetInt16Request.
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
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_data);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetInt16Request.
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
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_data=try r.integer(i16);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/SetInt16Request value.
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
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/SetInt16Request value.
 /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<2 or bytes.len>2) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/SetInt16Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
/// and is identified by UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsSetInt16Response=struct {
 /// @brief Maximum canonical extent of xarm_msgs/SetInt16Response in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=134;
 /// @brief Canonical codec identity of xarm_msgs/SetInt16Response.
 /// @details Exact identity UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d";
 /// @brief Original ROS type name for xarm_msgs/SetInt16Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/SetInt16Response";
 /// @brief Selected original native identity for xarm_msgs/SetInt16Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/SetInt16Response.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/zig/API.md
 field_ret: i16=0,
 /// @brief xarm_msgs/SetInt16Response.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/zig/API.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of xarm_msgs/SetInt16Response.
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
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_ret);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetInt16Response.
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
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_ret=try r.integer(i16);
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/SetInt16Response value.
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
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/SetInt16Response value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<6 or bytes.len>134) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/SetLoadRequest value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16 bytes
/// and is identified by UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsSetLoadRequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/SetLoadRequest in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=16;
 /// @brief Canonical codec identity of xarm_msgs/SetLoadRequest.
 /// @details Exact identity UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077";
 /// @brief Original ROS type name for xarm_msgs/SetLoadRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/SetLoadRequest";
 /// @brief Selected original native identity for xarm_msgs/SetLoadRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/SetLoadRequest.mass: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/zig/API.md
 field_mass: f32=0,
 /// @brief xarm_msgs/SetLoadRequest.xc: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/zig/API.md
 field_xc: f32=0,
 /// @brief xarm_msgs/SetLoadRequest.yc: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/zig/API.md
 field_yc: f32=0,
 /// @brief xarm_msgs/SetLoadRequest.zc: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/zig/API.md
 field_zc: f32=0,
 /// @brief Append every canonical field of xarm_msgs/SetLoadRequest.
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
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.float32(self.field_mass);
  try w.float32(self.field_xc);
  try w.float32(self.field_yc);
  try w.float32(self.field_zc);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetLoadRequest.
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
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_mass=try r.float32();
  value.field_xc=try r.float32();
  value.field_yc=try r.float32();
  value.field_zc=try r.float32();
  return value;
 }
 /// @brief Encode one complete xarm_msgs/SetLoadRequest value.
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
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/SetLoadRequest value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<16 or bytes.len>16) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/SetLoadResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
/// and is identified by UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsSetLoadResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/SetLoadResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=134;
 /// @brief Canonical codec identity of xarm_msgs/SetLoadResponse.
 /// @details Exact identity UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3";
 /// @brief Original ROS type name for xarm_msgs/SetLoadResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/SetLoadResponse";
 /// @brief Selected original native identity for xarm_msgs/SetLoadResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/SetLoadResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/zig/API.md
 field_ret: i16=0,
 /// @brief xarm_msgs/SetLoadResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/zig/API.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of xarm_msgs/SetLoadResponse.
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
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_ret);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetLoadResponse.
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
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_ret=try r.integer(i16);
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/SetLoadResponse value.
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
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/SetLoadResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<6 or bytes.len>134) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/SetToolModbusRequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262 bytes
/// and is identified by UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsSetToolModbusRequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/SetToolModbusRequest in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=262;
 /// @brief Canonical codec identity of xarm_msgs/SetToolModbusRequest.
 /// @details Exact identity UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a";
 /// @brief Original ROS type name for xarm_msgs/SetToolModbusRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/SetToolModbusRequest";
 /// @brief Selected original native identity for xarm_msgs/SetToolModbusRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/SetToolModbusRequest.send_data: uint8; 0..256 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 field_send_data: []u8=&.{},
 /// @brief xarm_msgs/SetToolModbusRequest.respond_len: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 field_respond_len: i16=0,
 /// @brief Append every canonical field of xarm_msgs/SetToolModbusRequest.
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
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  if(self.field_send_data.len>256) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_send_data.len)));
  for(self.field_send_data) |e| {
  try w.integer(e);
  }
  try w.integer(self.field_respond_len);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetToolModbusRequest.
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
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  const count0=try r.integer(u32); if(count0>256) return error.Invalid;
  value.field_send_data=try allocator.alloc(u8,count0);
  for(value.field_send_data) |*e| {
  e.*=try r.integer(u8);
  }
  value.field_respond_len=try r.integer(i16);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/SetToolModbusRequest value.
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
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/SetToolModbusRequest value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<6 or bytes.len>262) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/SetToolModbusResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262 bytes
/// and is identified by UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsSetToolModbusResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/SetToolModbusResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=262;
 /// @brief Canonical codec identity of xarm_msgs/SetToolModbusResponse.
 /// @details Exact identity UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15";
 /// @brief Original ROS type name for xarm_msgs/SetToolModbusResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/SetToolModbusResponse";
 /// @brief Selected original native identity for xarm_msgs/SetToolModbusResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/SetToolModbusResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 field_ret: i16=0,
 /// @brief xarm_msgs/SetToolModbusResponse.respond_data: uint8; 0..256 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 field_respond_data: []u8=&.{},
 /// @brief Append every canonical field of xarm_msgs/SetToolModbusResponse.
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
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_ret);
  if(self.field_respond_data.len>256) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_respond_data.len)));
  for(self.field_respond_data) |e| {
  try w.integer(e);
  }
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetToolModbusResponse.
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
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_ret=try r.integer(i16);
  const count1=try r.integer(u32); if(count1>256) return error.Invalid;
  value.field_respond_data=try allocator.alloc(u8,count1);
  for(value.field_respond_data) |*e| {
  e.*=try r.integer(u8);
  }
  return value;
 }
 /// @brief Encode one complete xarm_msgs/SetToolModbusResponse value.
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
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/SetToolModbusResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<6 or bytes.len>262) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/TCPOffsetRequest value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
/// and is identified by UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsTCPOffsetRequest=struct {
 /// @brief Maximum canonical extent of xarm_msgs/TCPOffsetRequest in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=24;
 /// @brief Canonical codec identity of xarm_msgs/TCPOffsetRequest.
 /// @details Exact identity UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
 /// @brief Original ROS type name for xarm_msgs/TCPOffsetRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/TCPOffsetRequest";
 /// @brief Selected original native identity for xarm_msgs/TCPOffsetRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/TCPOffsetRequest.x: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/zig/API.md
 field_x: f32=0,
 /// @brief xarm_msgs/TCPOffsetRequest.y: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/zig/API.md
 field_y: f32=0,
 /// @brief xarm_msgs/TCPOffsetRequest.z: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/zig/API.md
 field_z: f32=0,
 /// @brief xarm_msgs/TCPOffsetRequest.roll: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/zig/API.md
 field_roll: f32=0,
 /// @brief xarm_msgs/TCPOffsetRequest.pitch: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/zig/API.md
 field_pitch: f32=0,
 /// @brief xarm_msgs/TCPOffsetRequest.yaw: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/zig/API.md
 field_yaw: f32=0,
 /// @brief Append every canonical field of xarm_msgs/TCPOffsetRequest.
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
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.float32(self.field_x);
  try w.float32(self.field_y);
  try w.float32(self.field_z);
  try w.float32(self.field_roll);
  try w.float32(self.field_pitch);
  try w.float32(self.field_yaw);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/TCPOffsetRequest.
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
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_x=try r.float32();
  value.field_y=try r.float32();
  value.field_z=try r.float32();
  value.field_roll=try r.float32();
  value.field_pitch=try r.float32();
  value.field_yaw=try r.float32();
  return value;
 }
 /// @brief Encode one complete xarm_msgs/TCPOffsetRequest value.
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
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/TCPOffsetRequest value.
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
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>24) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 1 xarm_msgs/TCPOffsetResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
/// and is identified by UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/zig/API.md
pub const Ros1Xarm_msgsTCPOffsetResponse=struct {
 /// @brief Maximum canonical extent of xarm_msgs/TCPOffsetResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const maximum_wire_bytes: usize=134;
 /// @brief Canonical codec identity of xarm_msgs/TCPOffsetResponse.
 /// @details Exact identity UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const codec_identity="UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773";
 /// @brief Original ROS type name for xarm_msgs/TCPOffsetResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_type="xarm_msgs/TCPOffsetResponse";
 /// @brief Selected original native identity for xarm_msgs/TCPOffsetResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/zig/API.md
 pub const native_identity: ?[]const u8=null;
 /// @brief xarm_msgs/TCPOffsetResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/zig/API.md
 field_ret: i16=0,
 /// @brief xarm_msgs/TCPOffsetResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/zig/API.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of xarm_msgs/TCPOffsetResponse.
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
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_ret);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/TCPOffsetResponse.
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
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_ret=try r.integer(i16);
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete xarm_msgs/TCPOffsetResponse value.
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
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete xarm_msgs/TCPOffsetResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/zig/API.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<6 or bytes.len>134) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
