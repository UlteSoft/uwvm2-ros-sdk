package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 1 interbotix_uxarm_joy/ArmJoy value.
// @details All 12 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
// and is identified by UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy :: struct {
 // @brief interbotix_uxarm_joy/ArmJoy.ee_x_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_x_cmd: i8,
 // @brief interbotix_uxarm_joy/ArmJoy.ee_y_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_y_cmd: i8,
 // @brief interbotix_uxarm_joy/ArmJoy.ee_z_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_z_cmd: i8,
 // @brief interbotix_uxarm_joy/ArmJoy.ee_yaw_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_yaw_cmd: i8,
 // @brief interbotix_uxarm_joy/ArmJoy.ee_pitch_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_pitch_cmd: i8,
 // @brief interbotix_uxarm_joy/ArmJoy.waist_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_waist_cmd: i8,
 // @brief interbotix_uxarm_joy/ArmJoy.gripper_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_gripper_cmd: i8,
 // @brief interbotix_uxarm_joy/ArmJoy.pose_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_pose_cmd: i8,
 // @brief interbotix_uxarm_joy/ArmJoy.speed_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_cmd: i8,
 // @brief interbotix_uxarm_joy/ArmJoy.speed_toggle_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_toggle_cmd: i8,
 // @brief interbotix_uxarm_joy/ArmJoy.gripper_speed_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_gripper_speed_cmd: i8,
 // @brief interbotix_uxarm_joy/ArmJoy.mode_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_mode_cmd: i8,
}
// @brief Maximum canonical extent of interbotix_uxarm_joy/ArmJoy in bytes.
// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_Maximum_Wire_Bytes :: 12
// @brief Canonical codec identity of interbotix_uxarm_joy/ArmJoy.
// @details Exact identity UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_Codec_Identity :: "UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53"
// @brief Original ROS type name for interbotix_uxarm_joy/ArmJoy.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_Native_Type :: "interbotix_uxarm_joy/ArmJoy"
// @brief Selected original native identity for interbotix_uxarm_joy/ArmJoy.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_Native_Identity :: ""
// @brief interbotix_uxarm_joy/ArmJoy.EE_X_INC: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_EE_X_INC :: i8(1)
// @brief interbotix_uxarm_joy/ArmJoy.EE_X_DEC: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_EE_X_DEC :: i8(2)
// @brief interbotix_uxarm_joy/ArmJoy.EE_Y_INC: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_EE_Y_INC :: i8(3)
// @brief interbotix_uxarm_joy/ArmJoy.EE_Y_DEC: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_EE_Y_DEC :: i8(4)
// @brief interbotix_uxarm_joy/ArmJoy.EE_Z_INC: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_EE_Z_INC :: i8(5)
// @brief interbotix_uxarm_joy/ArmJoy.EE_Z_DEC: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_EE_Z_DEC :: i8(6)
// @brief interbotix_uxarm_joy/ArmJoy.EE_YAW_CCW: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_EE_YAW_CCW :: i8(7)
// @brief interbotix_uxarm_joy/ArmJoy.EE_YAW_CW: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_EE_YAW_CW :: i8(8)
// @brief interbotix_uxarm_joy/ArmJoy.EE_PITCH_UP: original int8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_EE_PITCH_UP :: i8(9)
// @brief interbotix_uxarm_joy/ArmJoy.EE_PITCH_DOWN: original int8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_EE_PITCH_DOWN :: i8(10)
// @brief interbotix_uxarm_joy/ArmJoy.WAIST_CCW: original int8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_WAIST_CCW :: i8(11)
// @brief interbotix_uxarm_joy/ArmJoy.WAIST_CW: original int8 constant.
// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_WAIST_CW :: i8(12)
// @brief interbotix_uxarm_joy/ArmJoy.GRIPPER_OPEN: original int8 constant.
// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_GRIPPER_OPEN :: i8(13)
// @brief interbotix_uxarm_joy/ArmJoy.GRIPPER_CLOSE: original int8 constant.
// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_GRIPPER_CLOSE :: i8(14)
// @brief interbotix_uxarm_joy/ArmJoy.HOME_POSE: original int8 constant.
// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_HOME_POSE :: i8(15)
// @brief interbotix_uxarm_joy/ArmJoy.HOLDUP_POSE: original int8 constant.
// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_HOLDUP_POSE :: i8(16)
// @brief interbotix_uxarm_joy/ArmJoy.SPEED_INC: original int8 constant.
// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_SPEED_INC :: i8(17)
// @brief interbotix_uxarm_joy/ArmJoy.SPEED_DEC: original int8 constant.
// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_SPEED_DEC :: i8(18)
// @brief interbotix_uxarm_joy/ArmJoy.SPEED_COARSE: original int8 constant.
// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_SPEED_COARSE :: i8(19)
// @brief interbotix_uxarm_joy/ArmJoy.SPEED_FINE: original int8 constant.
// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_SPEED_FINE :: i8(20)
// @brief interbotix_uxarm_joy/ArmJoy.GRIPPER_SPEED_INC: original int8 constant.
// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_GRIPPER_SPEED_INC :: i8(21)
// @brief interbotix_uxarm_joy/ArmJoy.GRIPPER_SPEED_DEC: original int8 constant.
// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_GRIPPER_SPEED_DEC :: i8(22)
// @brief interbotix_uxarm_joy/ArmJoy.MODE_SERVO: original int8 constant.
// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_MODE_SERVO :: i8(23)
// @brief interbotix_uxarm_joy/ArmJoy.MODE_TEACH: original int8 constant.
// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_uxarm_joyArmJoy_MODE_TEACH :: i8(24)
// @brief Construct the declared defaults of interbotix_uxarm_joy/ArmJoy.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_uxarm_joyArmJoy :: proc() -> Ros1Interbotix_uxarm_joyArmJoy {
 v: Ros1Interbotix_uxarm_joyArmJoy
 v.field_ee_x_cmd = 0
 v.field_ee_y_cmd = 0
 v.field_ee_z_cmd = 0
 v.field_ee_yaw_cmd = 0
 v.field_ee_pitch_cmd = 0
 v.field_waist_cmd = 0
 v.field_gripper_cmd = 0
 v.field_pose_cmd = 0
 v.field_speed_cmd = 0
 v.field_speed_toggle_cmd = 0
 v.field_gripper_speed_cmd = 0
 v.field_mode_cmd = 0
 return v
}
// @brief Append every canonical field of interbotix_uxarm_joy/ArmJoy.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_uxarm_joyArmJoy :: proc(v: ^Ros1Interbotix_uxarm_joyArmJoy, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ee_x_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_y_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_z_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_yaw_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_pitch_cmd),1) { return false }
 if !put_integer(w,u64(v.field_waist_cmd),1) { return false }
 if !put_integer(w,u64(v.field_gripper_cmd),1) { return false }
 if !put_integer(w,u64(v.field_pose_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_toggle_cmd),1) { return false }
 if !put_integer(w,u64(v.field_gripper_speed_cmd),1) { return false }
 if !put_integer(w,u64(v.field_mode_cmd),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_uxarm_joy/ArmJoy.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_uxarm_joyArmJoy :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_uxarm_joyArmJoy,bool) {
 v:=init_Ros1Interbotix_uxarm_joyArmJoy()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_x_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_y_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_z_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_yaw_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_pitch_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_waist_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_gripper_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pose_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed_toggle_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_gripper_speed_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_mode_cmd=i8(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_uxarm_joy/ArmJoy value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_uxarm_joyArmJoy :: proc(v: ^Ros1Interbotix_uxarm_joyArmJoy, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=12}
 if !write_Ros1Interbotix_uxarm_joyArmJoy(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=12}
 if !write_Ros1Interbotix_uxarm_joyArmJoy(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_uxarm_joy/ArmJoy value.
// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_uxarm_joyArmJoy; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_uxarm_joyArmJoy :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_uxarm_joyArmJoy,u32) {
 if len(bytes)<12 || len(bytes)>12 { return Ros1Interbotix_uxarm_joyArmJoy{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_uxarm_joyArmJoy(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_uxarm_joyArmJoy{},reader.code }
 return value,0
}
