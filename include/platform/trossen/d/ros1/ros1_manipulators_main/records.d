// Generated complete bounded values; BetterC, caller buffers, no authority.
module roswasm.records;
import roswasm.wire;
@nogc nothrow:
/// @brief Complete ROS 1 interbotix_uxarm_joy/ArmJoy value.
/// @details All 12 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
/// and is identified by UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_uxarm_joyArmJoy {
 /// @brief Maximum canonical extent of interbotix_uxarm_joy/ArmJoy in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=12;
 /// @brief Canonical codec identity of interbotix_uxarm_joy/ArmJoy.
 /// @details Exact identity UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53";
 /// @brief Original ROS type name for interbotix_uxarm_joy/ArmJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_uxarm_joy/ArmJoy";
 /// @brief Selected original native identity for interbotix_uxarm_joy/ArmJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_uxarm_joy/ArmJoy.EE_X_INC: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_X_INC=1;
 /// @brief interbotix_uxarm_joy/ArmJoy.EE_X_DEC: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_X_DEC=2;
 /// @brief interbotix_uxarm_joy/ArmJoy.EE_Y_INC: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Y_INC=3;
 /// @brief interbotix_uxarm_joy/ArmJoy.EE_Y_DEC: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Y_DEC=4;
 /// @brief interbotix_uxarm_joy/ArmJoy.EE_Z_INC: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Z_INC=5;
 /// @brief interbotix_uxarm_joy/ArmJoy.EE_Z_DEC: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Z_DEC=6;
 /// @brief interbotix_uxarm_joy/ArmJoy.EE_YAW_CCW: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_YAW_CCW=7;
 /// @brief interbotix_uxarm_joy/ArmJoy.EE_YAW_CW: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_YAW_CW=8;
 /// @brief interbotix_uxarm_joy/ArmJoy.EE_PITCH_UP: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_PITCH_UP=9;
 /// @brief interbotix_uxarm_joy/ArmJoy.EE_PITCH_DOWN: original int8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_PITCH_DOWN=10;
 /// @brief interbotix_uxarm_joy/ArmJoy.WAIST_CCW: original int8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WAIST_CCW=11;
 /// @brief interbotix_uxarm_joy/ArmJoy.WAIST_CW: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WAIST_CW=12;
 /// @brief interbotix_uxarm_joy/ArmJoy.GRIPPER_OPEN: original int8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_OPEN=13;
 /// @brief interbotix_uxarm_joy/ArmJoy.GRIPPER_CLOSE: original int8 constant.
 /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_CLOSE=14;
 /// @brief interbotix_uxarm_joy/ArmJoy.HOME_POSE: original int8 constant.
 /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_HOME_POSE=15;
 /// @brief interbotix_uxarm_joy/ArmJoy.HOLDUP_POSE: original int8 constant.
 /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_HOLDUP_POSE=16;
 /// @brief interbotix_uxarm_joy/ArmJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_INC=17;
 /// @brief interbotix_uxarm_joy/ArmJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_DEC=18;
 /// @brief interbotix_uxarm_joy/ArmJoy.SPEED_COARSE: original int8 constant.
 /// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_COARSE=19;
 /// @brief interbotix_uxarm_joy/ArmJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_FINE=20;
 /// @brief interbotix_uxarm_joy/ArmJoy.GRIPPER_SPEED_INC: original int8 constant.
 /// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_SPEED_INC=21;
 /// @brief interbotix_uxarm_joy/ArmJoy.GRIPPER_SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_SPEED_DEC=22;
 /// @brief interbotix_uxarm_joy/ArmJoy.MODE_SERVO: original int8 constant.
 /// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_MODE_SERVO=23;
 /// @brief interbotix_uxarm_joy/ArmJoy.MODE_TEACH: original int8 constant.
 /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_MODE_TEACH=24;
 /// @brief interbotix_uxarm_joy/ArmJoy.ee_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_x_cmd=0;
 /// @brief interbotix_uxarm_joy/ArmJoy.ee_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_y_cmd=0;
 /// @brief interbotix_uxarm_joy/ArmJoy.ee_z_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_z_cmd=0;
 /// @brief interbotix_uxarm_joy/ArmJoy.ee_yaw_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_yaw_cmd=0;
 /// @brief interbotix_uxarm_joy/ArmJoy.ee_pitch_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_pitch_cmd=0;
 /// @brief interbotix_uxarm_joy/ArmJoy.waist_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_waist_cmd=0;
 /// @brief interbotix_uxarm_joy/ArmJoy.gripper_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_gripper_cmd=0;
 /// @brief interbotix_uxarm_joy/ArmJoy.pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_pose_cmd=0;
 /// @brief interbotix_uxarm_joy/ArmJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_cmd=0;
 /// @brief interbotix_uxarm_joy/ArmJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_toggle_cmd=0;
 /// @brief interbotix_uxarm_joy/ArmJoy.gripper_speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_gripper_speed_cmd=0;
 /// @brief interbotix_uxarm_joy/ArmJoy.mode_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_mode_cmd=0;
 /// @brief Append every canonical field of interbotix_uxarm_joy/ArmJoy.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ee_x_cmd)) return false;
  if(!w.integer(this.field_ee_y_cmd)) return false;
  if(!w.integer(this.field_ee_z_cmd)) return false;
  if(!w.integer(this.field_ee_yaw_cmd)) return false;
  if(!w.integer(this.field_ee_pitch_cmd)) return false;
  if(!w.integer(this.field_waist_cmd)) return false;
  if(!w.integer(this.field_gripper_cmd)) return false;
  if(!w.integer(this.field_pose_cmd)) return false;
  if(!w.integer(this.field_speed_cmd)) return false;
  if(!w.integer(this.field_speed_toggle_cmd)) return false;
  if(!w.integer(this.field_gripper_speed_cmd)) return false;
  if(!w.integer(this.field_mode_cmd)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_uxarm_joy/ArmJoy.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_uxarm_joyArmJoy value) {
  value=Ros1Interbotix_uxarm_joyArmJoy.init;
  if(!r.integer(value.field_ee_x_cmd)) return false;
  if(!r.integer(value.field_ee_y_cmd)) return false;
  if(!r.integer(value.field_ee_z_cmd)) return false;
  if(!r.integer(value.field_ee_yaw_cmd)) return false;
  if(!r.integer(value.field_ee_pitch_cmd)) return false;
  if(!r.integer(value.field_waist_cmd)) return false;
  if(!r.integer(value.field_gripper_cmd)) return false;
  if(!r.integer(value.field_pose_cmd)) return false;
  if(!r.integer(value.field_speed_cmd)) return false;
  if(!r.integer(value.field_speed_toggle_cmd)) return false;
  if(!r.integer(value.field_gripper_speed_cmd)) return false;
  if(!r.integer(value.field_mode_cmd)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_uxarm_joy/ArmJoy value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_uxarm_joy/ArmJoy value.
 /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_uxarm_joyArmJoy value) {
  if(bytes.length<12 || bytes.length>12) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
