package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 1 interbotix_xs_msgs/ArmJoy value.
// @details All 12 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
// and is identified by UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy :: struct {
 // @brief interbotix_xs_msgs/ArmJoy.ee_x_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_x_cmd: i8,
 // @brief interbotix_xs_msgs/ArmJoy.ee_y_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_y_cmd: i8,
 // @brief interbotix_xs_msgs/ArmJoy.ee_z_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_z_cmd: i8,
 // @brief interbotix_xs_msgs/ArmJoy.ee_roll_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_roll_cmd: i8,
 // @brief interbotix_xs_msgs/ArmJoy.ee_pitch_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_pitch_cmd: i8,
 // @brief interbotix_xs_msgs/ArmJoy.waist_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_waist_cmd: i8,
 // @brief interbotix_xs_msgs/ArmJoy.gripper_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_gripper_cmd: i8,
 // @brief interbotix_xs_msgs/ArmJoy.pose_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_pose_cmd: i8,
 // @brief interbotix_xs_msgs/ArmJoy.speed_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_cmd: i8,
 // @brief interbotix_xs_msgs/ArmJoy.speed_toggle_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_toggle_cmd: i8,
 // @brief interbotix_xs_msgs/ArmJoy.gripper_pwm_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_gripper_pwm_cmd: i8,
 // @brief interbotix_xs_msgs/ArmJoy.torque_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_torque_cmd: i8,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/ArmJoy in bytes.
// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_Maximum_Wire_Bytes :: 12
// @brief Canonical codec identity of interbotix_xs_msgs/ArmJoy.
// @details Exact identity UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_Codec_Identity :: "UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3"
// @brief Original ROS type name for interbotix_xs_msgs/ArmJoy.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_Native_Type :: "interbotix_xs_msgs/ArmJoy"
// @brief Selected original native identity for interbotix_xs_msgs/ArmJoy.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_Native_Identity :: ""
// @brief interbotix_xs_msgs/ArmJoy.EE_X_INC: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_EE_X_INC :: i8(1)
// @brief interbotix_xs_msgs/ArmJoy.EE_X_DEC: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_EE_X_DEC :: i8(2)
// @brief interbotix_xs_msgs/ArmJoy.EE_Y_INC: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_EE_Y_INC :: i8(3)
// @brief interbotix_xs_msgs/ArmJoy.EE_Y_DEC: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_EE_Y_DEC :: i8(4)
// @brief interbotix_xs_msgs/ArmJoy.EE_Z_INC: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_EE_Z_INC :: i8(5)
// @brief interbotix_xs_msgs/ArmJoy.EE_Z_DEC: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_EE_Z_DEC :: i8(6)
// @brief interbotix_xs_msgs/ArmJoy.EE_ROLL_CCW: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_EE_ROLL_CCW :: i8(7)
// @brief interbotix_xs_msgs/ArmJoy.EE_ROLL_CW: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_EE_ROLL_CW :: i8(8)
// @brief interbotix_xs_msgs/ArmJoy.EE_PITCH_UP: original int8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_EE_PITCH_UP :: i8(9)
// @brief interbotix_xs_msgs/ArmJoy.EE_PITCH_DOWN: original int8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_EE_PITCH_DOWN :: i8(10)
// @brief interbotix_xs_msgs/ArmJoy.WAIST_CCW: original int8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_WAIST_CCW :: i8(11)
// @brief interbotix_xs_msgs/ArmJoy.WAIST_CW: original int8 constant.
// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_WAIST_CW :: i8(12)
// @brief interbotix_xs_msgs/ArmJoy.GRIPPER_OPEN: original int8 constant.
// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_GRIPPER_OPEN :: i8(13)
// @brief interbotix_xs_msgs/ArmJoy.GRIPPER_CLOSE: original int8 constant.
// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_GRIPPER_CLOSE :: i8(14)
// @brief interbotix_xs_msgs/ArmJoy.HOME_POSE: original int8 constant.
// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_HOME_POSE :: i8(15)
// @brief interbotix_xs_msgs/ArmJoy.SLEEP_POSE: original int8 constant.
// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_SLEEP_POSE :: i8(16)
// @brief interbotix_xs_msgs/ArmJoy.SPEED_INC: original int8 constant.
// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_SPEED_INC :: i8(17)
// @brief interbotix_xs_msgs/ArmJoy.SPEED_DEC: original int8 constant.
// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_SPEED_DEC :: i8(18)
// @brief interbotix_xs_msgs/ArmJoy.SPEED_COURSE: original int8 constant.
// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_SPEED_COURSE :: i8(19)
// @brief interbotix_xs_msgs/ArmJoy.SPEED_FINE: original int8 constant.
// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_SPEED_FINE :: i8(20)
// @brief interbotix_xs_msgs/ArmJoy.GRIPPER_PWM_INC: original int8 constant.
// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_GRIPPER_PWM_INC :: i8(21)
// @brief interbotix_xs_msgs/ArmJoy.GRIPPER_PWM_DEC: original int8 constant.
// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_GRIPPER_PWM_DEC :: i8(22)
// @brief interbotix_xs_msgs/ArmJoy.TORQUE_ON: original int8 constant.
// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_TORQUE_ON :: i8(23)
// @brief interbotix_xs_msgs/ArmJoy.TORQUE_OFF: original int8 constant.
// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsArmJoy_TORQUE_OFF :: i8(24)
// @brief Construct the declared defaults of interbotix_xs_msgs/ArmJoy.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsArmJoy :: proc() -> Ros1Interbotix_xs_msgsArmJoy {
 v: Ros1Interbotix_xs_msgsArmJoy
 v.field_ee_x_cmd = 0
 v.field_ee_y_cmd = 0
 v.field_ee_z_cmd = 0
 v.field_ee_roll_cmd = 0
 v.field_ee_pitch_cmd = 0
 v.field_waist_cmd = 0
 v.field_gripper_cmd = 0
 v.field_pose_cmd = 0
 v.field_speed_cmd = 0
 v.field_speed_toggle_cmd = 0
 v.field_gripper_pwm_cmd = 0
 v.field_torque_cmd = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/ArmJoy.
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
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsArmJoy :: proc(v: ^Ros1Interbotix_xs_msgsArmJoy, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ee_x_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_y_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_z_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_roll_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_pitch_cmd),1) { return false }
 if !put_integer(w,u64(v.field_waist_cmd),1) { return false }
 if !put_integer(w,u64(v.field_gripper_cmd),1) { return false }
 if !put_integer(w,u64(v.field_pose_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_toggle_cmd),1) { return false }
 if !put_integer(w,u64(v.field_gripper_pwm_cmd),1) { return false }
 if !put_integer(w,u64(v.field_torque_cmd),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/ArmJoy.
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
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsArmJoy :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsArmJoy,bool) {
 v:=init_Ros1Interbotix_xs_msgsArmJoy()
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
 v.field_ee_roll_cmd=i8(b)
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
 v.field_gripper_pwm_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_torque_cmd=i8(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/ArmJoy value.
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
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsArmJoy :: proc(v: ^Ros1Interbotix_xs_msgsArmJoy, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=12}
 if !write_Ros1Interbotix_xs_msgsArmJoy(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=12}
 if !write_Ros1Interbotix_xs_msgsArmJoy(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/ArmJoy value.
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
// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsArmJoy :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsArmJoy,u32) {
 if len(bytes)<12 || len(bytes)>12 { return Ros1Interbotix_xs_msgsArmJoy{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsArmJoy(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsArmJoy{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/HexJoy value.
// @details All 17 declared fields are retained in source order. The canonical representation occupies 17..17 bytes
// and is identified by UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy :: struct {
 // @brief interbotix_xs_msgs/HexJoy.world_x_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_world_x_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.world_y_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_world_y_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.world_yaw_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_world_yaw_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.place_x_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_place_x_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.place_y_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_place_y_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.place_z_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_place_z_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.place_roll_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_place_roll_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.place_pitch_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_place_pitch_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.pose_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_pose_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.move_type_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_move_type_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.gait_toggle_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_gait_toggle_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.leg_toggle_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_leg_toggle_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.stance_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_stance_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.reboot_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_reboot_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.set_home_pose_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_set_home_pose_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.speed_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_cmd: i8,
 // @brief interbotix_xs_msgs/HexJoy.speed_toggle_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_toggle_cmd: i8,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/HexJoy in bytes.
// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_Maximum_Wire_Bytes :: 17
// @brief Canonical codec identity of interbotix_xs_msgs/HexJoy.
// @details Exact identity UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_Codec_Identity :: "UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37"
// @brief Original ROS type name for interbotix_xs_msgs/HexJoy.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_Native_Type :: "interbotix_xs_msgs/HexJoy"
// @brief Selected original native identity for interbotix_xs_msgs/HexJoy.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_Native_Identity :: ""
// @brief interbotix_xs_msgs/HexJoy.WORLD_X_INC: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_WORLD_X_INC :: i8(1)
// @brief interbotix_xs_msgs/HexJoy.WORLD_X_DEC: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_WORLD_X_DEC :: i8(2)
// @brief interbotix_xs_msgs/HexJoy.WORLD_Y_INC: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_WORLD_Y_INC :: i8(3)
// @brief interbotix_xs_msgs/HexJoy.WORLD_Y_DEC: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_WORLD_Y_DEC :: i8(4)
// @brief interbotix_xs_msgs/HexJoy.WORLD_YAW_CCW: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_WORLD_YAW_CCW :: i8(5)
// @brief interbotix_xs_msgs/HexJoy.WORLD_YAW_CW: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_WORLD_YAW_CW :: i8(6)
// @brief interbotix_xs_msgs/HexJoy.PLACE_X_INC: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_PLACE_X_INC :: i8(7)
// @brief interbotix_xs_msgs/HexJoy.PLACE_X_DEC: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_PLACE_X_DEC :: i8(8)
// @brief interbotix_xs_msgs/HexJoy.PLACE_Y_INC: original int8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_PLACE_Y_INC :: i8(9)
// @brief interbotix_xs_msgs/HexJoy.PLACE_Y_DEC: original int8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_PLACE_Y_DEC :: i8(10)
// @brief interbotix_xs_msgs/HexJoy.PLACE_Z_INC: original int8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_PLACE_Z_INC :: i8(11)
// @brief interbotix_xs_msgs/HexJoy.PLACE_Z_DEC: original int8 constant.
// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_PLACE_Z_DEC :: i8(12)
// @brief interbotix_xs_msgs/HexJoy.PLACE_ROLL_CCW: original int8 constant.
// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_PLACE_ROLL_CCW :: i8(13)
// @brief interbotix_xs_msgs/HexJoy.PLACE_ROLL_CW: original int8 constant.
// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_PLACE_ROLL_CW :: i8(14)
// @brief interbotix_xs_msgs/HexJoy.PLACE_PITCH_UP: original int8 constant.
// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_PLACE_PITCH_UP :: i8(15)
// @brief interbotix_xs_msgs/HexJoy.PLACE_PITCH_DOWN: original int8 constant.
// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_PLACE_PITCH_DOWN :: i8(16)
// @brief interbotix_xs_msgs/HexJoy.MOVE_HEXAPOD: original int8 constant.
// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_MOVE_HEXAPOD :: i8(17)
// @brief interbotix_xs_msgs/HexJoy.MOVE_LEG: original int8 constant.
// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_MOVE_LEG :: i8(18)
// @brief interbotix_xs_msgs/HexJoy.HOME_POSE: original int8 constant.
// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_HOME_POSE :: i8(19)
// @brief interbotix_xs_msgs/HexJoy.SLEEP_POSE: original int8 constant.
// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_SLEEP_POSE :: i8(20)
// @brief interbotix_xs_msgs/HexJoy.GAIT_NEXT: original int8 constant.
// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_GAIT_NEXT :: i8(21)
// @brief interbotix_xs_msgs/HexJoy.GAIT_PREVIOUS: original int8 constant.
// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_GAIT_PREVIOUS :: i8(22)
// @brief interbotix_xs_msgs/HexJoy.LEG_NEXT: original int8 constant.
// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_LEG_NEXT :: i8(23)
// @brief interbotix_xs_msgs/HexJoy.LEG_PREVIOUS: original int8 constant.
// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_LEG_PREVIOUS :: i8(24)
// @brief interbotix_xs_msgs/HexJoy.WIDEN_STANCE: original int8 constant.
// @details Exact admitted value 25. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_WIDEN_STANCE :: i8(25)
// @brief interbotix_xs_msgs/HexJoy.NARROW_STANCE: original int8 constant.
// @details Exact admitted value 26. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_NARROW_STANCE :: i8(26)
// @brief interbotix_xs_msgs/HexJoy.REBOOT_MOTORS: original int8 constant.
// @details Exact admitted value 27. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_REBOOT_MOTORS :: i8(27)
// @brief interbotix_xs_msgs/HexJoy.SET_HOME_POSE: original int8 constant.
// @details Exact admitted value 28. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_SET_HOME_POSE :: i8(28)
// @brief interbotix_xs_msgs/HexJoy.SPEED_INC: original int8 constant.
// @details Exact admitted value 29. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_SPEED_INC :: i8(29)
// @brief interbotix_xs_msgs/HexJoy.SPEED_DEC: original int8 constant.
// @details Exact admitted value 30. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_SPEED_DEC :: i8(30)
// @brief interbotix_xs_msgs/HexJoy.SPEED_COURSE: original int8 constant.
// @details Exact admitted value 31. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_SPEED_COURSE :: i8(31)
// @brief interbotix_xs_msgs/HexJoy.SPEED_FINE: original int8 constant.
// @details Exact admitted value 32. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsHexJoy_SPEED_FINE :: i8(32)
// @brief Construct the declared defaults of interbotix_xs_msgs/HexJoy.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsHexJoy :: proc() -> Ros1Interbotix_xs_msgsHexJoy {
 v: Ros1Interbotix_xs_msgsHexJoy
 v.field_world_x_cmd = 0
 v.field_world_y_cmd = 0
 v.field_world_yaw_cmd = 0
 v.field_place_x_cmd = 0
 v.field_place_y_cmd = 0
 v.field_place_z_cmd = 0
 v.field_place_roll_cmd = 0
 v.field_place_pitch_cmd = 0
 v.field_pose_cmd = 0
 v.field_move_type_cmd = 0
 v.field_gait_toggle_cmd = 0
 v.field_leg_toggle_cmd = 0
 v.field_stance_cmd = 0
 v.field_reboot_cmd = 0
 v.field_set_home_pose_cmd = 0
 v.field_speed_cmd = 0
 v.field_speed_toggle_cmd = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/HexJoy.
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
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsHexJoy :: proc(v: ^Ros1Interbotix_xs_msgsHexJoy, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_world_x_cmd),1) { return false }
 if !put_integer(w,u64(v.field_world_y_cmd),1) { return false }
 if !put_integer(w,u64(v.field_world_yaw_cmd),1) { return false }
 if !put_integer(w,u64(v.field_place_x_cmd),1) { return false }
 if !put_integer(w,u64(v.field_place_y_cmd),1) { return false }
 if !put_integer(w,u64(v.field_place_z_cmd),1) { return false }
 if !put_integer(w,u64(v.field_place_roll_cmd),1) { return false }
 if !put_integer(w,u64(v.field_place_pitch_cmd),1) { return false }
 if !put_integer(w,u64(v.field_pose_cmd),1) { return false }
 if !put_integer(w,u64(v.field_move_type_cmd),1) { return false }
 if !put_integer(w,u64(v.field_gait_toggle_cmd),1) { return false }
 if !put_integer(w,u64(v.field_leg_toggle_cmd),1) { return false }
 if !put_integer(w,u64(v.field_stance_cmd),1) { return false }
 if !put_integer(w,u64(v.field_reboot_cmd),1) { return false }
 if !put_integer(w,u64(v.field_set_home_pose_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_toggle_cmd),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/HexJoy.
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
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsHexJoy :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsHexJoy,bool) {
 v:=init_Ros1Interbotix_xs_msgsHexJoy()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_world_x_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_world_y_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_world_yaw_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_place_x_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_place_y_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_place_z_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_place_roll_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_place_pitch_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pose_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_move_type_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_gait_toggle_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_leg_toggle_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_stance_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_reboot_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_set_home_pose_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed_toggle_cmd=i8(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/HexJoy value.
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
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsHexJoy :: proc(v: ^Ros1Interbotix_xs_msgsHexJoy, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=17}
 if !write_Ros1Interbotix_xs_msgsHexJoy(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=17}
 if !write_Ros1Interbotix_xs_msgsHexJoy(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/HexJoy value.
// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsHexJoy :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsHexJoy,u32) {
 if len(bytes)<17 || len(bytes)>17 { return Ros1Interbotix_xs_msgsHexJoy{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsHexJoy(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsHexJoy{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/JointGroupCommand value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..392 bytes
// and is identified by UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointGroupCommand :: struct {
 // @brief interbotix_xs_msgs/JointGroupCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/JointGroupCommand.cmd: float32; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
 field_cmd: []f32,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/JointGroupCommand in bytes.
// @details The inclusive bound is 392 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointGroupCommand_Maximum_Wire_Bytes :: 392
// @brief Canonical codec identity of interbotix_xs_msgs/JointGroupCommand.
// @details Exact identity UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointGroupCommand_Codec_Identity :: "UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec"
// @brief Original ROS type name for interbotix_xs_msgs/JointGroupCommand.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointGroupCommand_Native_Type :: "interbotix_xs_msgs/JointGroupCommand"
// @brief Selected original native identity for interbotix_xs_msgs/JointGroupCommand.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointGroupCommand_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/JointGroupCommand.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsJointGroupCommand :: proc() -> Ros1Interbotix_xs_msgsJointGroupCommand {
 v: Ros1Interbotix_xs_msgsJointGroupCommand
 v.field_name = ""
 v.field_cmd = nil
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/JointGroupCommand.
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
// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsJointGroupCommand :: proc(v: ^Ros1Interbotix_xs_msgsJointGroupCommand, w: ^Writer) -> bool {
 if !put_string(w,v.field_name,128) { return false }
 if len(v.field_cmd)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_cmd)),4) { return false }
 for e in v.field_cmd {
 if !put_float32(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/JointGroupCommand.
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
// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsJointGroupCommand :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsJointGroupCommand,bool) {
 v:=init_Ros1Interbotix_xs_msgsJointGroupCommand()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_cmd=make([]f32,int(n),allocator)
 }
 for &e in v.field_cmd {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/JointGroupCommand value.
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
// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsJointGroupCommand :: proc(v: ^Ros1Interbotix_xs_msgsJointGroupCommand, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=392}
 if !write_Ros1Interbotix_xs_msgsJointGroupCommand(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=392}
 if !write_Ros1Interbotix_xs_msgsJointGroupCommand(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/JointGroupCommand value.
// @details Require the complete 8..392-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsJointGroupCommand :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsJointGroupCommand,u32) {
 if len(bytes)<8 || len(bytes)>392 { return Ros1Interbotix_xs_msgsJointGroupCommand{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsJointGroupCommand(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsJointGroupCommand{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/JointSingleCommand value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointSingleCommand :: struct {
 // @brief interbotix_xs_msgs/JointSingleCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/JointSingleCommand.cmd: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
 field_cmd: f32,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/JointSingleCommand in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointSingleCommand_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of interbotix_xs_msgs/JointSingleCommand.
// @details Exact identity UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointSingleCommand_Codec_Identity :: "UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0"
// @brief Original ROS type name for interbotix_xs_msgs/JointSingleCommand.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointSingleCommand_Native_Type :: "interbotix_xs_msgs/JointSingleCommand"
// @brief Selected original native identity for interbotix_xs_msgs/JointSingleCommand.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointSingleCommand_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/JointSingleCommand.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsJointSingleCommand :: proc() -> Ros1Interbotix_xs_msgsJointSingleCommand {
 v: Ros1Interbotix_xs_msgsJointSingleCommand
 v.field_name = ""
 v.field_cmd = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/JointSingleCommand.
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
// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsJointSingleCommand :: proc(v: ^Ros1Interbotix_xs_msgsJointSingleCommand, w: ^Writer) -> bool {
 if !put_string(w,v.field_name,128) { return false }
 if !put_float32(w,v.field_cmd) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/JointSingleCommand.
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
// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsJointSingleCommand :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsJointSingleCommand,bool) {
 v:=init_Ros1Interbotix_xs_msgsJointSingleCommand()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_cmd=f32(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/JointSingleCommand value.
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
// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsJointSingleCommand :: proc(v: ^Ros1Interbotix_xs_msgsJointSingleCommand, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros1Interbotix_xs_msgsJointSingleCommand(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros1Interbotix_xs_msgsJointSingleCommand(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/JointSingleCommand value.
// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsJointSingleCommand :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsJointSingleCommand,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros1Interbotix_xs_msgsJointSingleCommand{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsJointSingleCommand(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsJointSingleCommand{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/JointTemps value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8712 bytes
// and is identified by UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointTemps :: struct {
 // @brief interbotix_xs_msgs/JointTemps.names: string; 0..64 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/odin/API.md
 field_names: []string,
 // @brief interbotix_xs_msgs/JointTemps.temps: int32; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/odin/API.md
 field_temps: []i32,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/JointTemps in bytes.
// @details The inclusive bound is 8712 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointTemps_Maximum_Wire_Bytes :: 8712
// @brief Canonical codec identity of interbotix_xs_msgs/JointTemps.
// @details Exact identity UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointTemps_Codec_Identity :: "UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511"
// @brief Original ROS type name for interbotix_xs_msgs/JointTemps.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointTemps_Native_Type :: "interbotix_xs_msgs/JointTemps"
// @brief Selected original native identity for interbotix_xs_msgs/JointTemps.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointTemps_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/JointTemps.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsJointTemps :: proc() -> Ros1Interbotix_xs_msgsJointTemps {
 v: Ros1Interbotix_xs_msgsJointTemps
 v.field_names = nil
 v.field_temps = nil
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/JointTemps.
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
// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsJointTemps :: proc(v: ^Ros1Interbotix_xs_msgsJointTemps, w: ^Writer) -> bool {
 if len(v.field_names)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_names)),4) { return false }
 for e in v.field_names {
 if !put_string(w,e,128) { return false }
 }
 if len(v.field_temps)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_temps)),4) { return false }
 for e in v.field_temps {
 if !put_integer(w,u64(e),4) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/JointTemps.
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
// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsJointTemps :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsJointTemps,bool) {
 v:=init_Ros1Interbotix_xs_msgsJointTemps()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_names=make([]string,int(n),allocator)
 }
 for &e in v.field_names {
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_temps=make([]i32,int(n),allocator)
 }
 for &e in v.field_temps {
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 e=i32(b)
 }
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/JointTemps value.
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
// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsJointTemps :: proc(v: ^Ros1Interbotix_xs_msgsJointTemps, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8712}
 if !write_Ros1Interbotix_xs_msgsJointTemps(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8712}
 if !write_Ros1Interbotix_xs_msgsJointTemps(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/JointTemps value.
// @details Require the complete 8..8712-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsJointTemps :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsJointTemps,u32) {
 if len(bytes)<8 || len(bytes)>8712 { return Ros1Interbotix_xs_msgsJointTemps{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsJointTemps(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsJointTemps{},reader.code }
 return value,0
}
// @brief Complete ROS 1 time value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Time :: struct {
 // @brief time.sec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Time; document/platform/trossen/en_US/language/odin/API.md
 field_sec: u32,
 // @brief time.nsec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Time; document/platform/trossen/en_US/language/odin/API.md
 field_nsec: u32,
}
// @brief Maximum canonical extent of time in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Time; document/platform/trossen/en_US/language/odin/API.md
Ros1Time_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of time.
// @details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Time; document/platform/trossen/en_US/language/odin/API.md
Ros1Time_Codec_Identity :: "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
// @brief Original ROS type name for time.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Time; document/platform/trossen/en_US/language/odin/API.md
Ros1Time_Native_Type :: "time"
// @brief Selected original native identity for time.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Time; document/platform/trossen/en_US/language/odin/API.md
Ros1Time_Native_Identity :: ""
// @brief Construct the declared defaults of time.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Time; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Time :: proc() -> Ros1Time {
 v: Ros1Time
 v.field_sec = 0
 v.field_nsec = 0
 return v
}
// @brief Append every canonical field of time.
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
// @see Ros1Time; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Time :: proc(v: ^Ros1Time, w: ^Writer) -> bool {
 if v.field_nsec >= 1000000000 { w.code=22; return false }
 if !put_integer(w,u64(v.field_sec),4) { return false }
 if !put_integer(w,u64(v.field_nsec),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of time.
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
// @see Ros1Time; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Time :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Time,bool) {
 v:=init_Ros1Time()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_sec=u32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_nsec=u32(b)
 }
 if v.field_nsec >= 1000000000 { r.code=22; return v,false }
 return v,true
}
// @brief Encode one complete time value.
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
// @see Ros1Time; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Time :: proc(v: ^Ros1Time, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Time(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Time(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete time value.
// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Time; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Time :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Time,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Time{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Time(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Time{},reader.code }
 return value,0
}
// @brief Complete ROS 1 std_msgs/Header value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..144 bytes
// and is identified by UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Std_msgsHeader :: struct {
 // @brief std_msgs/Header.seq: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/odin/API.md
 field_seq: u32,
 // @brief std_msgs/Header.stamp: time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/odin/API.md
 field_stamp: Ros1Time,
 // @brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/odin/API.md
 field_frame_id: string,
}
// @brief Maximum canonical extent of std_msgs/Header in bytes.
// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/odin/API.md
Ros1Std_msgsHeader_Maximum_Wire_Bytes :: 144
// @brief Canonical codec identity of std_msgs/Header.
// @details Exact identity UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/odin/API.md
Ros1Std_msgsHeader_Codec_Identity :: "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
// @brief Original ROS type name for std_msgs/Header.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/odin/API.md
Ros1Std_msgsHeader_Native_Type :: "std_msgs/Header"
// @brief Selected original native identity for std_msgs/Header.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/odin/API.md
Ros1Std_msgsHeader_Native_Identity :: ""
// @brief Construct the declared defaults of std_msgs/Header.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Std_msgsHeader :: proc() -> Ros1Std_msgsHeader {
 v: Ros1Std_msgsHeader
 v.field_seq = 0
 v.field_stamp = Ros1Time{}
 v.field_frame_id = ""
 return v
}
// @brief Append every canonical field of std_msgs/Header.
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
// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Std_msgsHeader :: proc(v: ^Ros1Std_msgsHeader, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_seq),4) { return false }
 if !write_Ros1Time(&v.field_stamp,w) { return false }
 if !put_string(w,v.field_frame_id,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_msgs/Header.
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
// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Std_msgsHeader :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Std_msgsHeader,bool) {
 v:=init_Ros1Std_msgsHeader()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_seq=u32(b)
 }
 {
 b,ok:=read_Ros1Time(r,allocator); if !ok { return v,false }
 v.field_stamp=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_frame_id=b
 }
 return v,true
}
// @brief Encode one complete std_msgs/Header value.
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
// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Std_msgsHeader :: proc(v: ^Ros1Std_msgsHeader, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=144}
 if !write_Ros1Std_msgsHeader(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=144}
 if !write_Ros1Std_msgsHeader(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_msgs/Header value.
// @details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Std_msgsHeader :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Std_msgsHeader,u32) {
 if len(bytes)<16 || len(bytes)>144 { return Ros1Std_msgsHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Std_msgsHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Std_msgsHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 1 duration value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Duration :: struct {
 // @brief duration.sec: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Duration; document/platform/trossen/en_US/language/odin/API.md
 field_sec: i32,
 // @brief duration.nsec: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Duration; document/platform/trossen/en_US/language/odin/API.md
 field_nsec: i32,
}
// @brief Maximum canonical extent of duration in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Duration; document/platform/trossen/en_US/language/odin/API.md
Ros1Duration_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of duration.
// @details Exact identity UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Duration; document/platform/trossen/en_US/language/odin/API.md
Ros1Duration_Codec_Identity :: "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8"
// @brief Original ROS type name for duration.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Duration; document/platform/trossen/en_US/language/odin/API.md
Ros1Duration_Native_Type :: "duration"
// @brief Selected original native identity for duration.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Duration; document/platform/trossen/en_US/language/odin/API.md
Ros1Duration_Native_Identity :: ""
// @brief Construct the declared defaults of duration.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Duration; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Duration :: proc() -> Ros1Duration {
 v: Ros1Duration
 v.field_sec = 0
 v.field_nsec = 0
 return v
}
// @brief Append every canonical field of duration.
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
// @see Ros1Duration; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Duration :: proc(v: ^Ros1Duration, w: ^Writer) -> bool {
 if v.field_nsec < 0 { w.code=22; return false }
 if v.field_nsec >= 1000000000 { w.code=22; return false }
 if !put_integer(w,u64(v.field_sec),4) { return false }
 if !put_integer(w,u64(v.field_nsec),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of duration.
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
// @see Ros1Duration; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Duration :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Duration,bool) {
 v:=init_Ros1Duration()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_sec=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_nsec=i32(b)
 }
 if v.field_nsec < 0 { r.code=22; return v,false }
 if v.field_nsec >= 1000000000 { r.code=22; return v,false }
 return v,true
}
// @brief Encode one complete duration value.
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
// @see Ros1Duration; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Duration :: proc(v: ^Ros1Duration, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Duration(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Duration(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete duration value.
// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Duration; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Duration :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Duration,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Duration{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Duration(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Duration{},reader.code }
 return value,0
}
// @brief Complete ROS 1 trajectory_msgs/JointTrajectoryPoint value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 24..536 bytes
// and is identified by UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Trajectory_msgsJointTrajectoryPoint :: struct {
 // @brief trajectory_msgs/JointTrajectoryPoint.positions: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
 field_positions: []f64,
 // @brief trajectory_msgs/JointTrajectoryPoint.velocities: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
 field_velocities: []f64,
 // @brief trajectory_msgs/JointTrajectoryPoint.accelerations: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
 field_accelerations: []f64,
 // @brief trajectory_msgs/JointTrajectoryPoint.effort: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
 field_effort: []f64,
 // @brief trajectory_msgs/JointTrajectoryPoint.time_from_start: duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
 field_time_from_start: Ros1Duration,
}
// @brief Maximum canonical extent of trajectory_msgs/JointTrajectoryPoint in bytes.
// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
Ros1Trajectory_msgsJointTrajectoryPoint_Maximum_Wire_Bytes :: 536
// @brief Canonical codec identity of trajectory_msgs/JointTrajectoryPoint.
// @details Exact identity UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
Ros1Trajectory_msgsJointTrajectoryPoint_Codec_Identity :: "UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81"
// @brief Original ROS type name for trajectory_msgs/JointTrajectoryPoint.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
Ros1Trajectory_msgsJointTrajectoryPoint_Native_Type :: "trajectory_msgs/JointTrajectoryPoint"
// @brief Selected original native identity for trajectory_msgs/JointTrajectoryPoint.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
Ros1Trajectory_msgsJointTrajectoryPoint_Native_Identity :: ""
// @brief Construct the declared defaults of trajectory_msgs/JointTrajectoryPoint.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Trajectory_msgsJointTrajectoryPoint :: proc() -> Ros1Trajectory_msgsJointTrajectoryPoint {
 v: Ros1Trajectory_msgsJointTrajectoryPoint
 v.field_positions = nil
 v.field_velocities = nil
 v.field_accelerations = nil
 v.field_effort = nil
 v.field_time_from_start = Ros1Duration{}
 return v
}
// @brief Append every canonical field of trajectory_msgs/JointTrajectoryPoint.
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
// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Trajectory_msgsJointTrajectoryPoint :: proc(v: ^Ros1Trajectory_msgsJointTrajectoryPoint, w: ^Writer) -> bool {
 if len(v.field_positions)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_positions)),4) { return false }
 for e in v.field_positions {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_velocities)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocities)),4) { return false }
 for e in v.field_velocities {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_accelerations)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_accelerations)),4) { return false }
 for e in v.field_accelerations {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_effort)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_effort)),4) { return false }
 for e in v.field_effort {
 if !put_float64(w,e) { return false }
 }
 if !write_Ros1Duration(&v.field_time_from_start,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of trajectory_msgs/JointTrajectoryPoint.
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
// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Trajectory_msgsJointTrajectoryPoint :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Trajectory_msgsJointTrajectoryPoint,bool) {
 v:=init_Ros1Trajectory_msgsJointTrajectoryPoint()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_positions=make([]f64,int(n),allocator)
 }
 for &e in v.field_positions {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_velocities=make([]f64,int(n),allocator)
 }
 for &e in v.field_velocities {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_accelerations=make([]f64,int(n),allocator)
 }
 for &e in v.field_accelerations {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_effort=make([]f64,int(n),allocator)
 }
 for &e in v.field_effort {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=read_Ros1Duration(r,allocator); if !ok { return v,false }
 v.field_time_from_start=b
 }
 return v,true
}
// @brief Encode one complete trajectory_msgs/JointTrajectoryPoint value.
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
// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Trajectory_msgsJointTrajectoryPoint :: proc(v: ^Ros1Trajectory_msgsJointTrajectoryPoint, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=536}
 if !write_Ros1Trajectory_msgsJointTrajectoryPoint(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=536}
 if !write_Ros1Trajectory_msgsJointTrajectoryPoint(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete trajectory_msgs/JointTrajectoryPoint value.
// @details Require the complete 24..536-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Trajectory_msgsJointTrajectoryPoint :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Trajectory_msgsJointTrajectoryPoint,u32) {
 if len(bytes)<24 || len(bytes)>536 { return Ros1Trajectory_msgsJointTrajectoryPoint{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Trajectory_msgsJointTrajectoryPoint(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Trajectory_msgsJointTrajectoryPoint{},reader.code }
 return value,0
}
// @brief Complete ROS 1 trajectory_msgs/JointTrajectory value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..4408 bytes
// and is identified by UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Trajectory_msgsJointTrajectory :: struct {
 // @brief trajectory_msgs/JointTrajectory.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
 field_header: Ros1Std_msgsHeader,
 // @brief trajectory_msgs/JointTrajectory.joint_names: string; 0..16 elements; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
 field_joint_names: []string,
 // @brief trajectory_msgs/JointTrajectory.points: trajectory_msgs/JointTrajectoryPoint; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
 field_points: []Ros1Trajectory_msgsJointTrajectoryPoint,
}
// @brief Maximum canonical extent of trajectory_msgs/JointTrajectory in bytes.
// @details The inclusive bound is 4408 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
Ros1Trajectory_msgsJointTrajectory_Maximum_Wire_Bytes :: 4408
// @brief Canonical codec identity of trajectory_msgs/JointTrajectory.
// @details Exact identity UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
Ros1Trajectory_msgsJointTrajectory_Codec_Identity :: "UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9"
// @brief Original ROS type name for trajectory_msgs/JointTrajectory.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
Ros1Trajectory_msgsJointTrajectory_Native_Type :: "trajectory_msgs/JointTrajectory"
// @brief Selected original native identity for trajectory_msgs/JointTrajectory.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
Ros1Trajectory_msgsJointTrajectory_Native_Identity :: ""
// @brief Construct the declared defaults of trajectory_msgs/JointTrajectory.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Trajectory_msgsJointTrajectory :: proc() -> Ros1Trajectory_msgsJointTrajectory {
 v: Ros1Trajectory_msgsJointTrajectory
 v.field_header = Ros1Std_msgsHeader{}
 v.field_joint_names = nil
 v.field_points = nil
 return v
}
// @brief Append every canonical field of trajectory_msgs/JointTrajectory.
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
// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Trajectory_msgsJointTrajectory :: proc(v: ^Ros1Trajectory_msgsJointTrajectory, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if len(v.field_joint_names)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,128) { return false }
 }
 if len(v.field_points)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_points)),4) { return false }
 for e in v.field_points {
 item:=e
 if !write_Ros1Trajectory_msgsJointTrajectoryPoint(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of trajectory_msgs/JointTrajectory.
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
// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Trajectory_msgsJointTrajectory :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Trajectory_msgsJointTrajectory,bool) {
 v:=init_Ros1Trajectory_msgsJointTrajectory()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_joint_names=make([]string,int(n),allocator)
 }
 for &e in v.field_joint_names {
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_points=make([]Ros1Trajectory_msgsJointTrajectoryPoint,int(n),allocator)
 }
 for &e in v.field_points {
 {
 b,ok:=read_Ros1Trajectory_msgsJointTrajectoryPoint(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete trajectory_msgs/JointTrajectory value.
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
// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Trajectory_msgsJointTrajectory :: proc(v: ^Ros1Trajectory_msgsJointTrajectory, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4408}
 if !write_Ros1Trajectory_msgsJointTrajectory(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4408}
 if !write_Ros1Trajectory_msgsJointTrajectory(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete trajectory_msgs/JointTrajectory value.
// @details Require the complete 24..4408-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Trajectory_msgsJointTrajectory :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Trajectory_msgsJointTrajectory,u32) {
 if len(bytes)<24 || len(bytes)>4408 { return Ros1Trajectory_msgsJointTrajectory{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Trajectory_msgsJointTrajectory(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Trajectory_msgsJointTrajectory{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/JointTrajectoryCommand value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 32..4672 bytes
// and is identified by UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointTrajectoryCommand :: struct {
 // @brief interbotix_xs_msgs/JointTrajectoryCommand.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
 field_cmd_type: string,
 // @brief interbotix_xs_msgs/JointTrajectoryCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/JointTrajectoryCommand.traj: trajectory_msgs/JointTrajectory.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
 field_traj: Ros1Trajectory_msgsJointTrajectory,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/JointTrajectoryCommand in bytes.
// @details The inclusive bound is 4672 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointTrajectoryCommand_Maximum_Wire_Bytes :: 4672
// @brief Canonical codec identity of interbotix_xs_msgs/JointTrajectoryCommand.
// @details Exact identity UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointTrajectoryCommand_Codec_Identity :: "UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7"
// @brief Original ROS type name for interbotix_xs_msgs/JointTrajectoryCommand.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointTrajectoryCommand_Native_Type :: "interbotix_xs_msgs/JointTrajectoryCommand"
// @brief Selected original native identity for interbotix_xs_msgs/JointTrajectoryCommand.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsJointTrajectoryCommand_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/JointTrajectoryCommand.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsJointTrajectoryCommand :: proc() -> Ros1Interbotix_xs_msgsJointTrajectoryCommand {
 v: Ros1Interbotix_xs_msgsJointTrajectoryCommand
 v.field_cmd_type = ""
 v.field_name = ""
 v.field_traj = Ros1Trajectory_msgsJointTrajectory{}
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/JointTrajectoryCommand.
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
// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsJointTrajectoryCommand :: proc(v: ^Ros1Interbotix_xs_msgsJointTrajectoryCommand, w: ^Writer) -> bool {
 if !put_string(w,v.field_cmd_type,128) { return false }
 if !put_string(w,v.field_name,128) { return false }
 if !write_Ros1Trajectory_msgsJointTrajectory(&v.field_traj,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/JointTrajectoryCommand.
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
// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsJointTrajectoryCommand :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros1Interbotix_xs_msgsJointTrajectoryCommand,bool) {
 v:=init_Ros1Interbotix_xs_msgsJointTrajectoryCommand()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cmd_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=read_Ros1Trajectory_msgsJointTrajectory(r,allocator); if !ok { return v,false }
 v.field_traj=b
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/JointTrajectoryCommand value.
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
// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsJointTrajectoryCommand :: proc(v: ^Ros1Interbotix_xs_msgsJointTrajectoryCommand, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4672}
 if !write_Ros1Interbotix_xs_msgsJointTrajectoryCommand(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4672}
 if !write_Ros1Interbotix_xs_msgsJointTrajectoryCommand(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/JointTrajectoryCommand value.
// @details Require the complete 32..4672-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsJointTrajectoryCommand :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros1Interbotix_xs_msgsJointTrajectoryCommand,u32) {
 if len(bytes)<32 || len(bytes)>4672 { return Ros1Interbotix_xs_msgsJointTrajectoryCommand{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsJointTrajectoryCommand(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsJointTrajectoryCommand{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/LocobotJoy value.
// @details All 16 declared fields are retained in source order. The canonical representation occupies 30..30 bytes
// and is identified by UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy :: struct {
 // @brief interbotix_xs_msgs/LocobotJoy.base_x_cmd: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_base_x_cmd: f64,
 // @brief interbotix_xs_msgs/LocobotJoy.base_theta_cmd: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_base_theta_cmd: f64,
 // @brief interbotix_xs_msgs/LocobotJoy.base_reset_odom_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_base_reset_odom_cmd: i8,
 // @brief interbotix_xs_msgs/LocobotJoy.pan_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_pan_cmd: i8,
 // @brief interbotix_xs_msgs/LocobotJoy.tilt_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_tilt_cmd: i8,
 // @brief interbotix_xs_msgs/LocobotJoy.ee_x_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_x_cmd: i8,
 // @brief interbotix_xs_msgs/LocobotJoy.ee_y_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_y_cmd: i8,
 // @brief interbotix_xs_msgs/LocobotJoy.ee_z_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_z_cmd: i8,
 // @brief interbotix_xs_msgs/LocobotJoy.ee_roll_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_roll_cmd: i8,
 // @brief interbotix_xs_msgs/LocobotJoy.ee_pitch_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_pitch_cmd: i8,
 // @brief interbotix_xs_msgs/LocobotJoy.waist_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_waist_cmd: i8,
 // @brief interbotix_xs_msgs/LocobotJoy.gripper_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_gripper_cmd: i8,
 // @brief interbotix_xs_msgs/LocobotJoy.pose_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_pose_cmd: i8,
 // @brief interbotix_xs_msgs/LocobotJoy.speed_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_cmd: i8,
 // @brief interbotix_xs_msgs/LocobotJoy.speed_toggle_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_toggle_cmd: i8,
 // @brief interbotix_xs_msgs/LocobotJoy.gripper_pwm_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_gripper_pwm_cmd: i8,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/LocobotJoy in bytes.
// @details The inclusive bound is 30 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_Maximum_Wire_Bytes :: 30
// @brief Canonical codec identity of interbotix_xs_msgs/LocobotJoy.
// @details Exact identity UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_Codec_Identity :: "UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613"
// @brief Original ROS type name for interbotix_xs_msgs/LocobotJoy.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_Native_Type :: "interbotix_xs_msgs/LocobotJoy"
// @brief Selected original native identity for interbotix_xs_msgs/LocobotJoy.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_Native_Identity :: ""
// @brief interbotix_xs_msgs/LocobotJoy.RESET_ODOM: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_RESET_ODOM :: i8(1)
// @brief interbotix_xs_msgs/LocobotJoy.PAN_CCW: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_PAN_CCW :: i8(2)
// @brief interbotix_xs_msgs/LocobotJoy.PAN_CW: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_PAN_CW :: i8(3)
// @brief interbotix_xs_msgs/LocobotJoy.TILT_UP: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_TILT_UP :: i8(4)
// @brief interbotix_xs_msgs/LocobotJoy.TILT_DOWN: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_TILT_DOWN :: i8(5)
// @brief interbotix_xs_msgs/LocobotJoy.PAN_TILT_HOME: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_PAN_TILT_HOME :: i8(6)
// @brief interbotix_xs_msgs/LocobotJoy.EE_X_INC: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_EE_X_INC :: i8(7)
// @brief interbotix_xs_msgs/LocobotJoy.EE_X_DEC: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_EE_X_DEC :: i8(8)
// @brief interbotix_xs_msgs/LocobotJoy.EE_Y_INC: original int8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_EE_Y_INC :: i8(9)
// @brief interbotix_xs_msgs/LocobotJoy.EE_Y_DEC: original int8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_EE_Y_DEC :: i8(10)
// @brief interbotix_xs_msgs/LocobotJoy.EE_Z_INC: original int8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_EE_Z_INC :: i8(11)
// @brief interbotix_xs_msgs/LocobotJoy.EE_Z_DEC: original int8 constant.
// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_EE_Z_DEC :: i8(12)
// @brief interbotix_xs_msgs/LocobotJoy.EE_ROLL_CCW: original int8 constant.
// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_EE_ROLL_CCW :: i8(13)
// @brief interbotix_xs_msgs/LocobotJoy.EE_ROLL_CW: original int8 constant.
// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_EE_ROLL_CW :: i8(14)
// @brief interbotix_xs_msgs/LocobotJoy.EE_PITCH_UP: original int8 constant.
// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_EE_PITCH_UP :: i8(15)
// @brief interbotix_xs_msgs/LocobotJoy.EE_PITCH_DOWN: original int8 constant.
// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_EE_PITCH_DOWN :: i8(16)
// @brief interbotix_xs_msgs/LocobotJoy.WAIST_CCW: original int8 constant.
// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_WAIST_CCW :: i8(17)
// @brief interbotix_xs_msgs/LocobotJoy.WAIST_CW: original int8 constant.
// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_WAIST_CW :: i8(18)
// @brief interbotix_xs_msgs/LocobotJoy.GRIPPER_OPEN: original int8 constant.
// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_OPEN :: i8(19)
// @brief interbotix_xs_msgs/LocobotJoy.GRIPPER_CLOSE: original int8 constant.
// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_CLOSE :: i8(20)
// @brief interbotix_xs_msgs/LocobotJoy.HOME_POSE: original int8 constant.
// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_HOME_POSE :: i8(21)
// @brief interbotix_xs_msgs/LocobotJoy.SLEEP_POSE: original int8 constant.
// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_SLEEP_POSE :: i8(22)
// @brief interbotix_xs_msgs/LocobotJoy.SPEED_INC: original int8 constant.
// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_SPEED_INC :: i8(23)
// @brief interbotix_xs_msgs/LocobotJoy.SPEED_DEC: original int8 constant.
// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_SPEED_DEC :: i8(24)
// @brief interbotix_xs_msgs/LocobotJoy.SPEED_COURSE: original int8 constant.
// @details Exact admitted value 25. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_SPEED_COURSE :: i8(25)
// @brief interbotix_xs_msgs/LocobotJoy.SPEED_FINE: original int8 constant.
// @details Exact admitted value 26. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_SPEED_FINE :: i8(26)
// @brief interbotix_xs_msgs/LocobotJoy.GRIPPER_PWM_INC: original int8 constant.
// @details Exact admitted value 27. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_PWM_INC :: i8(27)
// @brief interbotix_xs_msgs/LocobotJoy.GRIPPER_PWM_DEC: original int8 constant.
// @details Exact admitted value 28. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_PWM_DEC :: i8(28)
// @brief Construct the declared defaults of interbotix_xs_msgs/LocobotJoy.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsLocobotJoy :: proc() -> Ros1Interbotix_xs_msgsLocobotJoy {
 v: Ros1Interbotix_xs_msgsLocobotJoy
 v.field_base_x_cmd = 0
 v.field_base_theta_cmd = 0
 v.field_base_reset_odom_cmd = 0
 v.field_pan_cmd = 0
 v.field_tilt_cmd = 0
 v.field_ee_x_cmd = 0
 v.field_ee_y_cmd = 0
 v.field_ee_z_cmd = 0
 v.field_ee_roll_cmd = 0
 v.field_ee_pitch_cmd = 0
 v.field_waist_cmd = 0
 v.field_gripper_cmd = 0
 v.field_pose_cmd = 0
 v.field_speed_cmd = 0
 v.field_speed_toggle_cmd = 0
 v.field_gripper_pwm_cmd = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/LocobotJoy.
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
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsLocobotJoy :: proc(v: ^Ros1Interbotix_xs_msgsLocobotJoy, w: ^Writer) -> bool {
 if !put_float64(w,v.field_base_x_cmd) { return false }
 if !put_float64(w,v.field_base_theta_cmd) { return false }
 if !put_integer(w,u64(v.field_base_reset_odom_cmd),1) { return false }
 if !put_integer(w,u64(v.field_pan_cmd),1) { return false }
 if !put_integer(w,u64(v.field_tilt_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_x_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_y_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_z_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_roll_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_pitch_cmd),1) { return false }
 if !put_integer(w,u64(v.field_waist_cmd),1) { return false }
 if !put_integer(w,u64(v.field_gripper_cmd),1) { return false }
 if !put_integer(w,u64(v.field_pose_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_toggle_cmd),1) { return false }
 if !put_integer(w,u64(v.field_gripper_pwm_cmd),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/LocobotJoy.
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
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsLocobotJoy :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsLocobotJoy,bool) {
 v:=init_Ros1Interbotix_xs_msgsLocobotJoy()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_base_x_cmd=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_base_theta_cmd=f64(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_base_reset_odom_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pan_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_tilt_cmd=i8(b)
 }
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
 v.field_ee_roll_cmd=i8(b)
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
 v.field_gripper_pwm_cmd=i8(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/LocobotJoy value.
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
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsLocobotJoy :: proc(v: ^Ros1Interbotix_xs_msgsLocobotJoy, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=30}
 if !write_Ros1Interbotix_xs_msgsLocobotJoy(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=30}
 if !write_Ros1Interbotix_xs_msgsLocobotJoy(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/LocobotJoy value.
// @details Require the complete 30..30-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsLocobotJoy :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsLocobotJoy,u32) {
 if len(bytes)<30 || len(bytes)>30 { return Ros1Interbotix_xs_msgsLocobotJoy{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsLocobotJoy(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsLocobotJoy{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/MotorGainsRequest value.
// @details All 9 declared fields are retained in source order. The canonical representation occupies 36..292 bytes
// and is identified by UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsMotorGainsRequest :: struct {
 // @brief interbotix_xs_msgs/MotorGainsRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
 field_cmd_type: string,
 // @brief interbotix_xs_msgs/MotorGainsRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/MotorGainsRequest.kp_pos: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
 field_kp_pos: i32,
 // @brief interbotix_xs_msgs/MotorGainsRequest.ki_pos: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
 field_ki_pos: i32,
 // @brief interbotix_xs_msgs/MotorGainsRequest.kd_pos: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
 field_kd_pos: i32,
 // @brief interbotix_xs_msgs/MotorGainsRequest.k1: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
 field_k1: i32,
 // @brief interbotix_xs_msgs/MotorGainsRequest.k2: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
 field_k2: i32,
 // @brief interbotix_xs_msgs/MotorGainsRequest.kp_vel: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
 field_kp_vel: i32,
 // @brief interbotix_xs_msgs/MotorGainsRequest.ki_vel: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
 field_ki_vel: i32,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/MotorGainsRequest in bytes.
// @details The inclusive bound is 292 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsMotorGainsRequest_Maximum_Wire_Bytes :: 292
// @brief Canonical codec identity of interbotix_xs_msgs/MotorGainsRequest.
// @details Exact identity UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsMotorGainsRequest_Codec_Identity :: "UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009"
// @brief Original ROS type name for interbotix_xs_msgs/MotorGainsRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsMotorGainsRequest_Native_Type :: "interbotix_xs_msgs/MotorGainsRequest"
// @brief Selected original native identity for interbotix_xs_msgs/MotorGainsRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsMotorGainsRequest_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/MotorGainsRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsMotorGainsRequest :: proc() -> Ros1Interbotix_xs_msgsMotorGainsRequest {
 v: Ros1Interbotix_xs_msgsMotorGainsRequest
 v.field_cmd_type = ""
 v.field_name = ""
 v.field_kp_pos = 0
 v.field_ki_pos = 0
 v.field_kd_pos = 0
 v.field_k1 = 0
 v.field_k2 = 0
 v.field_kp_vel = 0
 v.field_ki_vel = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/MotorGainsRequest.
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
// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsMotorGainsRequest :: proc(v: ^Ros1Interbotix_xs_msgsMotorGainsRequest, w: ^Writer) -> bool {
 if !put_string(w,v.field_cmd_type,128) { return false }
 if !put_string(w,v.field_name,128) { return false }
 if !put_integer(w,u64(v.field_kp_pos),4) { return false }
 if !put_integer(w,u64(v.field_ki_pos),4) { return false }
 if !put_integer(w,u64(v.field_kd_pos),4) { return false }
 if !put_integer(w,u64(v.field_k1),4) { return false }
 if !put_integer(w,u64(v.field_k2),4) { return false }
 if !put_integer(w,u64(v.field_kp_vel),4) { return false }
 if !put_integer(w,u64(v.field_ki_vel),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/MotorGainsRequest.
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
// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsMotorGainsRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsMotorGainsRequest,bool) {
 v:=init_Ros1Interbotix_xs_msgsMotorGainsRequest()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cmd_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_kp_pos=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_ki_pos=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_kd_pos=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_k1=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_k2=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_kp_vel=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_ki_vel=i32(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/MotorGainsRequest value.
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
// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsMotorGainsRequest :: proc(v: ^Ros1Interbotix_xs_msgsMotorGainsRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=292}
 if !write_Ros1Interbotix_xs_msgsMotorGainsRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=292}
 if !write_Ros1Interbotix_xs_msgsMotorGainsRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/MotorGainsRequest value.
// @details Require the complete 36..292-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsMotorGainsRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsMotorGainsRequest,u32) {
 if len(bytes)<36 || len(bytes)>292 { return Ros1Interbotix_xs_msgsMotorGainsRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsMotorGainsRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsMotorGainsRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/MotorGainsResponse value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsMotorGainsResponse :: struct {
}
// @brief Maximum canonical extent of interbotix_xs_msgs/MotorGainsResponse in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsMotorGainsResponse_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of interbotix_xs_msgs/MotorGainsResponse.
// @details Exact identity UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsMotorGainsResponse_Codec_Identity :: "UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89"
// @brief Original ROS type name for interbotix_xs_msgs/MotorGainsResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsMotorGainsResponse_Native_Type :: "interbotix_xs_msgs/MotorGainsResponse"
// @brief Selected original native identity for interbotix_xs_msgs/MotorGainsResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsMotorGainsResponse_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/MotorGainsResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsMotorGainsResponse :: proc() -> Ros1Interbotix_xs_msgsMotorGainsResponse {
 v: Ros1Interbotix_xs_msgsMotorGainsResponse
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/MotorGainsResponse.
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
// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsMotorGainsResponse :: proc(v: ^Ros1Interbotix_xs_msgsMotorGainsResponse, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/MotorGainsResponse.
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
// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsMotorGainsResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsMotorGainsResponse,bool) {
 v:=init_Ros1Interbotix_xs_msgsMotorGainsResponse()
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/MotorGainsResponse value.
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
// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsMotorGainsResponse :: proc(v: ^Ros1Interbotix_xs_msgsMotorGainsResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Interbotix_xs_msgsMotorGainsResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Interbotix_xs_msgsMotorGainsResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/MotorGainsResponse value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsMotorGainsResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsMotorGainsResponse,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Interbotix_xs_msgsMotorGainsResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsMotorGainsResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsMotorGainsResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/OperatingModesRequest value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies 24..536 bytes
// and is identified by UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsOperatingModesRequest :: struct {
 // @brief interbotix_xs_msgs/OperatingModesRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
 field_cmd_type: string,
 // @brief interbotix_xs_msgs/OperatingModesRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/OperatingModesRequest.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
 field_mode: string,
 // @brief interbotix_xs_msgs/OperatingModesRequest.profile_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
 field_profile_type: string,
 // @brief interbotix_xs_msgs/OperatingModesRequest.profile_velocity: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
 field_profile_velocity: i32,
 // @brief interbotix_xs_msgs/OperatingModesRequest.profile_acceleration: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
 field_profile_acceleration: i32,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/OperatingModesRequest in bytes.
// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsOperatingModesRequest_Maximum_Wire_Bytes :: 536
// @brief Canonical codec identity of interbotix_xs_msgs/OperatingModesRequest.
// @details Exact identity UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsOperatingModesRequest_Codec_Identity :: "UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3"
// @brief Original ROS type name for interbotix_xs_msgs/OperatingModesRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsOperatingModesRequest_Native_Type :: "interbotix_xs_msgs/OperatingModesRequest"
// @brief Selected original native identity for interbotix_xs_msgs/OperatingModesRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsOperatingModesRequest_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/OperatingModesRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsOperatingModesRequest :: proc() -> Ros1Interbotix_xs_msgsOperatingModesRequest {
 v: Ros1Interbotix_xs_msgsOperatingModesRequest
 v.field_cmd_type = ""
 v.field_name = ""
 v.field_mode = ""
 v.field_profile_type = ""
 v.field_profile_velocity = 0
 v.field_profile_acceleration = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/OperatingModesRequest.
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
// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsOperatingModesRequest :: proc(v: ^Ros1Interbotix_xs_msgsOperatingModesRequest, w: ^Writer) -> bool {
 if !put_string(w,v.field_cmd_type,128) { return false }
 if !put_string(w,v.field_name,128) { return false }
 if !put_string(w,v.field_mode,128) { return false }
 if !put_string(w,v.field_profile_type,128) { return false }
 if !put_integer(w,u64(v.field_profile_velocity),4) { return false }
 if !put_integer(w,u64(v.field_profile_acceleration),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/OperatingModesRequest.
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
// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsOperatingModesRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsOperatingModesRequest,bool) {
 v:=init_Ros1Interbotix_xs_msgsOperatingModesRequest()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cmd_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_mode=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_profile_type=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_profile_velocity=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_profile_acceleration=i32(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/OperatingModesRequest value.
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
// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsOperatingModesRequest :: proc(v: ^Ros1Interbotix_xs_msgsOperatingModesRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=536}
 if !write_Ros1Interbotix_xs_msgsOperatingModesRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=536}
 if !write_Ros1Interbotix_xs_msgsOperatingModesRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/OperatingModesRequest value.
// @details Require the complete 24..536-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsOperatingModesRequest :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros1Interbotix_xs_msgsOperatingModesRequest,u32) {
 if len(bytes)<24 || len(bytes)>536 { return Ros1Interbotix_xs_msgsOperatingModesRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsOperatingModesRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsOperatingModesRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/OperatingModesResponse value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsOperatingModesResponse :: struct {
}
// @brief Maximum canonical extent of interbotix_xs_msgs/OperatingModesResponse in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsOperatingModesResponse_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of interbotix_xs_msgs/OperatingModesResponse.
// @details Exact identity UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsOperatingModesResponse_Codec_Identity :: "UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e"
// @brief Original ROS type name for interbotix_xs_msgs/OperatingModesResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsOperatingModesResponse_Native_Type :: "interbotix_xs_msgs/OperatingModesResponse"
// @brief Selected original native identity for interbotix_xs_msgs/OperatingModesResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsOperatingModesResponse_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/OperatingModesResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsOperatingModesResponse :: proc() -> Ros1Interbotix_xs_msgsOperatingModesResponse {
 v: Ros1Interbotix_xs_msgsOperatingModesResponse
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/OperatingModesResponse.
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
// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsOperatingModesResponse :: proc(v: ^Ros1Interbotix_xs_msgsOperatingModesResponse, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/OperatingModesResponse.
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
// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsOperatingModesResponse :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros1Interbotix_xs_msgsOperatingModesResponse,bool) {
 v:=init_Ros1Interbotix_xs_msgsOperatingModesResponse()
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/OperatingModesResponse value.
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
// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsOperatingModesResponse :: proc(v: ^Ros1Interbotix_xs_msgsOperatingModesResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Interbotix_xs_msgsOperatingModesResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Interbotix_xs_msgsOperatingModesResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/OperatingModesResponse value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsOperatingModesResponse :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros1Interbotix_xs_msgsOperatingModesResponse,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Interbotix_xs_msgsOperatingModesResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsOperatingModesResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsOperatingModesResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/RebootRequest value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 10..266 bytes
// and is identified by UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRebootRequest :: struct {
 // @brief interbotix_xs_msgs/RebootRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/odin/API.md
 field_cmd_type: string,
 // @brief interbotix_xs_msgs/RebootRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/RebootRequest.enable: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/odin/API.md
 field_enable: bool,
 // @brief interbotix_xs_msgs/RebootRequest.smart_reboot: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/odin/API.md
 field_smart_reboot: bool,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/RebootRequest in bytes.
// @details The inclusive bound is 266 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRebootRequest_Maximum_Wire_Bytes :: 266
// @brief Canonical codec identity of interbotix_xs_msgs/RebootRequest.
// @details Exact identity UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRebootRequest_Codec_Identity :: "UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a"
// @brief Original ROS type name for interbotix_xs_msgs/RebootRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRebootRequest_Native_Type :: "interbotix_xs_msgs/RebootRequest"
// @brief Selected original native identity for interbotix_xs_msgs/RebootRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRebootRequest_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/RebootRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsRebootRequest :: proc() -> Ros1Interbotix_xs_msgsRebootRequest {
 v: Ros1Interbotix_xs_msgsRebootRequest
 v.field_cmd_type = ""
 v.field_name = ""
 v.field_enable = false
 v.field_smart_reboot = false
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/RebootRequest.
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
// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsRebootRequest :: proc(v: ^Ros1Interbotix_xs_msgsRebootRequest, w: ^Writer) -> bool {
 if !put_string(w,v.field_cmd_type,128) { return false }
 if !put_string(w,v.field_name,128) { return false }
 if !put_bool(w,v.field_enable) { return false }
 if !put_bool(w,v.field_smart_reboot) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/RebootRequest.
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
// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsRebootRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsRebootRequest,bool) {
 v:=init_Ros1Interbotix_xs_msgsRebootRequest()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cmd_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_enable=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_smart_reboot=bool(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/RebootRequest value.
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
// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsRebootRequest :: proc(v: ^Ros1Interbotix_xs_msgsRebootRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=266}
 if !write_Ros1Interbotix_xs_msgsRebootRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=266}
 if !write_Ros1Interbotix_xs_msgsRebootRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/RebootRequest value.
// @details Require the complete 10..266-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsRebootRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsRebootRequest,u32) {
 if len(bytes)<10 || len(bytes)>266 { return Ros1Interbotix_xs_msgsRebootRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsRebootRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsRebootRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/RebootResponse value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRebootResponse :: struct {
}
// @brief Maximum canonical extent of interbotix_xs_msgs/RebootResponse in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRebootResponse_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of interbotix_xs_msgs/RebootResponse.
// @details Exact identity UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRebootResponse_Codec_Identity :: "UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4"
// @brief Original ROS type name for interbotix_xs_msgs/RebootResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRebootResponse_Native_Type :: "interbotix_xs_msgs/RebootResponse"
// @brief Selected original native identity for interbotix_xs_msgs/RebootResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRebootResponse_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/RebootResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsRebootResponse :: proc() -> Ros1Interbotix_xs_msgsRebootResponse {
 v: Ros1Interbotix_xs_msgsRebootResponse
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/RebootResponse.
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
// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsRebootResponse :: proc(v: ^Ros1Interbotix_xs_msgsRebootResponse, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/RebootResponse.
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
// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsRebootResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsRebootResponse,bool) {
 v:=init_Ros1Interbotix_xs_msgsRebootResponse()
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/RebootResponse value.
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
// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsRebootResponse :: proc(v: ^Ros1Interbotix_xs_msgsRebootResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Interbotix_xs_msgsRebootResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Interbotix_xs_msgsRebootResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/RebootResponse value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsRebootResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsRebootResponse,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Interbotix_xs_msgsRebootResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsRebootResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsRebootResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/RegisterValuesRequest value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..400 bytes
// and is identified by UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRegisterValuesRequest :: struct {
 // @brief interbotix_xs_msgs/RegisterValuesRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/odin/API.md
 field_cmd_type: string,
 // @brief interbotix_xs_msgs/RegisterValuesRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/RegisterValuesRequest.reg: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/odin/API.md
 field_reg: string,
 // @brief interbotix_xs_msgs/RegisterValuesRequest.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/odin/API.md
 field_value: i32,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/RegisterValuesRequest in bytes.
// @details The inclusive bound is 400 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRegisterValuesRequest_Maximum_Wire_Bytes :: 400
// @brief Canonical codec identity of interbotix_xs_msgs/RegisterValuesRequest.
// @details Exact identity UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRegisterValuesRequest_Codec_Identity :: "UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a"
// @brief Original ROS type name for interbotix_xs_msgs/RegisterValuesRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRegisterValuesRequest_Native_Type :: "interbotix_xs_msgs/RegisterValuesRequest"
// @brief Selected original native identity for interbotix_xs_msgs/RegisterValuesRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRegisterValuesRequest_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/RegisterValuesRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsRegisterValuesRequest :: proc() -> Ros1Interbotix_xs_msgsRegisterValuesRequest {
 v: Ros1Interbotix_xs_msgsRegisterValuesRequest
 v.field_cmd_type = ""
 v.field_name = ""
 v.field_reg = ""
 v.field_value = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/RegisterValuesRequest.
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
// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsRegisterValuesRequest :: proc(v: ^Ros1Interbotix_xs_msgsRegisterValuesRequest, w: ^Writer) -> bool {
 if !put_string(w,v.field_cmd_type,128) { return false }
 if !put_string(w,v.field_name,128) { return false }
 if !put_string(w,v.field_reg,128) { return false }
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/RegisterValuesRequest.
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
// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsRegisterValuesRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsRegisterValuesRequest,bool) {
 v:=init_Ros1Interbotix_xs_msgsRegisterValuesRequest()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cmd_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_reg=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_value=i32(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/RegisterValuesRequest value.
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
// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsRegisterValuesRequest :: proc(v: ^Ros1Interbotix_xs_msgsRegisterValuesRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=400}
 if !write_Ros1Interbotix_xs_msgsRegisterValuesRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=400}
 if !write_Ros1Interbotix_xs_msgsRegisterValuesRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/RegisterValuesRequest value.
// @details Require the complete 16..400-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsRegisterValuesRequest :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros1Interbotix_xs_msgsRegisterValuesRequest,u32) {
 if len(bytes)<16 || len(bytes)>400 { return Ros1Interbotix_xs_msgsRegisterValuesRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsRegisterValuesRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsRegisterValuesRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/RegisterValuesResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..68 bytes and
// is identified by UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRegisterValuesResponse :: struct {
 // @brief interbotix_xs_msgs/RegisterValuesResponse.values: int32; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/odin/API.md
 field_values: []i32,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/RegisterValuesResponse in bytes.
// @details The inclusive bound is 68 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRegisterValuesResponse_Maximum_Wire_Bytes :: 68
// @brief Canonical codec identity of interbotix_xs_msgs/RegisterValuesResponse.
// @details Exact identity UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRegisterValuesResponse_Codec_Identity :: "UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659"
// @brief Original ROS type name for interbotix_xs_msgs/RegisterValuesResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRegisterValuesResponse_Native_Type :: "interbotix_xs_msgs/RegisterValuesResponse"
// @brief Selected original native identity for interbotix_xs_msgs/RegisterValuesResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRegisterValuesResponse_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/RegisterValuesResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsRegisterValuesResponse :: proc() -> Ros1Interbotix_xs_msgsRegisterValuesResponse {
 v: Ros1Interbotix_xs_msgsRegisterValuesResponse
 v.field_values = nil
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/RegisterValuesResponse.
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
// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsRegisterValuesResponse :: proc(v: ^Ros1Interbotix_xs_msgsRegisterValuesResponse, w: ^Writer) -> bool {
 if len(v.field_values)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_integer(w,u64(e),4) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/RegisterValuesResponse.
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
// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsRegisterValuesResponse :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros1Interbotix_xs_msgsRegisterValuesResponse,bool) {
 v:=init_Ros1Interbotix_xs_msgsRegisterValuesResponse()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_values=make([]i32,int(n),allocator)
 }
 for &e in v.field_values {
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 e=i32(b)
 }
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/RegisterValuesResponse value.
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
// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsRegisterValuesResponse :: proc(v: ^Ros1Interbotix_xs_msgsRegisterValuesResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=68}
 if !write_Ros1Interbotix_xs_msgsRegisterValuesResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=68}
 if !write_Ros1Interbotix_xs_msgsRegisterValuesResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/RegisterValuesResponse value.
// @details Require the complete 4..68-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsRegisterValuesResponse :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros1Interbotix_xs_msgsRegisterValuesResponse,u32) {
 if len(bytes)<4 || len(bytes)>68 { return Ros1Interbotix_xs_msgsRegisterValuesResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsRegisterValuesResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsRegisterValuesResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/RobotInfoRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..264 bytes
// and is identified by UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRobotInfoRequest :: struct {
 // @brief interbotix_xs_msgs/RobotInfoRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/odin/API.md
 field_cmd_type: string,
 // @brief interbotix_xs_msgs/RobotInfoRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/RobotInfoRequest in bytes.
// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRobotInfoRequest_Maximum_Wire_Bytes :: 264
// @brief Canonical codec identity of interbotix_xs_msgs/RobotInfoRequest.
// @details Exact identity UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRobotInfoRequest_Codec_Identity :: "UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176"
// @brief Original ROS type name for interbotix_xs_msgs/RobotInfoRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRobotInfoRequest_Native_Type :: "interbotix_xs_msgs/RobotInfoRequest"
// @brief Selected original native identity for interbotix_xs_msgs/RobotInfoRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRobotInfoRequest_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/RobotInfoRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsRobotInfoRequest :: proc() -> Ros1Interbotix_xs_msgsRobotInfoRequest {
 v: Ros1Interbotix_xs_msgsRobotInfoRequest
 v.field_cmd_type = ""
 v.field_name = ""
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/RobotInfoRequest.
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
// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsRobotInfoRequest :: proc(v: ^Ros1Interbotix_xs_msgsRobotInfoRequest, w: ^Writer) -> bool {
 if !put_string(w,v.field_cmd_type,128) { return false }
 if !put_string(w,v.field_name,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/RobotInfoRequest.
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
// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsRobotInfoRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsRobotInfoRequest,bool) {
 v:=init_Ros1Interbotix_xs_msgsRobotInfoRequest()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cmd_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/RobotInfoRequest value.
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
// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsRobotInfoRequest :: proc(v: ^Ros1Interbotix_xs_msgsRobotInfoRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=264}
 if !write_Ros1Interbotix_xs_msgsRobotInfoRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=264}
 if !write_Ros1Interbotix_xs_msgsRobotInfoRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/RobotInfoRequest value.
// @details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsRobotInfoRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsRobotInfoRequest,u32) {
 if len(bytes)<8 || len(bytes)>264 { return Ros1Interbotix_xs_msgsRobotInfoRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsRobotInfoRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsRobotInfoRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/RobotInfoResponse value.
// @details All 11 declared fields are retained in source order. The canonical representation occupies 42..18474
// bytes and is identified by UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRobotInfoResponse :: struct {
 // @brief interbotix_xs_msgs/RobotInfoResponse.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
 field_mode: string,
 // @brief interbotix_xs_msgs/RobotInfoResponse.profile_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
 field_profile_type: string,
 // @brief interbotix_xs_msgs/RobotInfoResponse.joint_names: string; 0..64 elements; each string is 0..128 bytes;
 // strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
 field_joint_names: []string,
 // @brief interbotix_xs_msgs/RobotInfoResponse.joint_ids: int16; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
 field_joint_ids: []i16,
 // @brief interbotix_xs_msgs/RobotInfoResponse.joint_lower_limits: float32; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
 field_joint_lower_limits: []f32,
 // @brief interbotix_xs_msgs/RobotInfoResponse.joint_upper_limits: float32; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
 field_joint_upper_limits: []f32,
 // @brief interbotix_xs_msgs/RobotInfoResponse.joint_velocity_limits: float32; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
 field_joint_velocity_limits: []f32,
 // @brief interbotix_xs_msgs/RobotInfoResponse.joint_sleep_positions: float32; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
 field_joint_sleep_positions: []f32,
 // @brief interbotix_xs_msgs/RobotInfoResponse.joint_state_indices: int16; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
 field_joint_state_indices: []i16,
 // @brief interbotix_xs_msgs/RobotInfoResponse.num_joints: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
 field_num_joints: i16,
 // @brief interbotix_xs_msgs/RobotInfoResponse.name: string; 0..64 elements; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
 field_name: []string,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/RobotInfoResponse in bytes.
// @details The inclusive bound is 18474 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRobotInfoResponse_Maximum_Wire_Bytes :: 18474
// @brief Canonical codec identity of interbotix_xs_msgs/RobotInfoResponse.
// @details Exact identity UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRobotInfoResponse_Codec_Identity :: "UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d"
// @brief Original ROS type name for interbotix_xs_msgs/RobotInfoResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRobotInfoResponse_Native_Type :: "interbotix_xs_msgs/RobotInfoResponse"
// @brief Selected original native identity for interbotix_xs_msgs/RobotInfoResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsRobotInfoResponse_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/RobotInfoResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsRobotInfoResponse :: proc() -> Ros1Interbotix_xs_msgsRobotInfoResponse {
 v: Ros1Interbotix_xs_msgsRobotInfoResponse
 v.field_mode = ""
 v.field_profile_type = ""
 v.field_joint_names = nil
 v.field_joint_ids = nil
 v.field_joint_lower_limits = nil
 v.field_joint_upper_limits = nil
 v.field_joint_velocity_limits = nil
 v.field_joint_sleep_positions = nil
 v.field_joint_state_indices = nil
 v.field_num_joints = 0
 v.field_name = nil
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/RobotInfoResponse.
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
// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsRobotInfoResponse :: proc(v: ^Ros1Interbotix_xs_msgsRobotInfoResponse, w: ^Writer) -> bool {
 if !put_string(w,v.field_mode,128) { return false }
 if !put_string(w,v.field_profile_type,128) { return false }
 if len(v.field_joint_names)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,128) { return false }
 }
 if len(v.field_joint_ids)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_ids)),4) { return false }
 for e in v.field_joint_ids {
 if !put_integer(w,u64(e),2) { return false }
 }
 if len(v.field_joint_lower_limits)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_lower_limits)),4) { return false }
 for e in v.field_joint_lower_limits {
 if !put_float32(w,e) { return false }
 }
 if len(v.field_joint_upper_limits)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_upper_limits)),4) { return false }
 for e in v.field_joint_upper_limits {
 if !put_float32(w,e) { return false }
 }
 if len(v.field_joint_velocity_limits)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_velocity_limits)),4) { return false }
 for e in v.field_joint_velocity_limits {
 if !put_float32(w,e) { return false }
 }
 if len(v.field_joint_sleep_positions)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_sleep_positions)),4) { return false }
 for e in v.field_joint_sleep_positions {
 if !put_float32(w,e) { return false }
 }
 if len(v.field_joint_state_indices)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_state_indices)),4) { return false }
 for e in v.field_joint_state_indices {
 if !put_integer(w,u64(e),2) { return false }
 }
 if !put_integer(w,u64(v.field_num_joints),2) { return false }
 if len(v.field_name)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_name)),4) { return false }
 for e in v.field_name {
 if !put_string(w,e,128) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/RobotInfoResponse.
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
// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsRobotInfoResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsRobotInfoResponse,bool) {
 v:=init_Ros1Interbotix_xs_msgsRobotInfoResponse()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_mode=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_profile_type=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joint_names=make([]string,int(n),allocator)
 }
 for &e in v.field_joint_names {
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joint_ids=make([]i16,int(n),allocator)
 }
 for &e in v.field_joint_ids {
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 e=i16(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joint_lower_limits=make([]f32,int(n),allocator)
 }
 for &e in v.field_joint_lower_limits {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joint_upper_limits=make([]f32,int(n),allocator)
 }
 for &e in v.field_joint_upper_limits {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joint_velocity_limits=make([]f32,int(n),allocator)
 }
 for &e in v.field_joint_velocity_limits {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joint_sleep_positions=make([]f32,int(n),allocator)
 }
 for &e in v.field_joint_sleep_positions {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joint_state_indices=make([]i16,int(n),allocator)
 }
 for &e in v.field_joint_state_indices {
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 e=i16(b)
 }
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_num_joints=i16(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_name=make([]string,int(n),allocator)
 }
 for &e in v.field_name {
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/RobotInfoResponse value.
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
// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsRobotInfoResponse :: proc(v: ^Ros1Interbotix_xs_msgsRobotInfoResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=18474}
 if !write_Ros1Interbotix_xs_msgsRobotInfoResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=18474}
 if !write_Ros1Interbotix_xs_msgsRobotInfoResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/RobotInfoResponse value.
// @details Require the complete 42..18474-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsRobotInfoResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsRobotInfoResponse,u32) {
 if len(bytes)<42 || len(bytes)>18474 { return Ros1Interbotix_xs_msgsRobotInfoResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsRobotInfoResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsRobotInfoResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/TorqueEnableRequest value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..265 bytes
// and is identified by UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTorqueEnableRequest :: struct {
 // @brief interbotix_xs_msgs/TorqueEnableRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/odin/API.md
 field_cmd_type: string,
 // @brief interbotix_xs_msgs/TorqueEnableRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/TorqueEnableRequest.enable: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/odin/API.md
 field_enable: bool,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/TorqueEnableRequest in bytes.
// @details The inclusive bound is 265 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTorqueEnableRequest_Maximum_Wire_Bytes :: 265
// @brief Canonical codec identity of interbotix_xs_msgs/TorqueEnableRequest.
// @details Exact identity UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTorqueEnableRequest_Codec_Identity :: "UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a"
// @brief Original ROS type name for interbotix_xs_msgs/TorqueEnableRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTorqueEnableRequest_Native_Type :: "interbotix_xs_msgs/TorqueEnableRequest"
// @brief Selected original native identity for interbotix_xs_msgs/TorqueEnableRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTorqueEnableRequest_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/TorqueEnableRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsTorqueEnableRequest :: proc() -> Ros1Interbotix_xs_msgsTorqueEnableRequest {
 v: Ros1Interbotix_xs_msgsTorqueEnableRequest
 v.field_cmd_type = ""
 v.field_name = ""
 v.field_enable = false
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/TorqueEnableRequest.
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
// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsTorqueEnableRequest :: proc(v: ^Ros1Interbotix_xs_msgsTorqueEnableRequest, w: ^Writer) -> bool {
 if !put_string(w,v.field_cmd_type,128) { return false }
 if !put_string(w,v.field_name,128) { return false }
 if !put_bool(w,v.field_enable) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/TorqueEnableRequest.
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
// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsTorqueEnableRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsTorqueEnableRequest,bool) {
 v:=init_Ros1Interbotix_xs_msgsTorqueEnableRequest()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cmd_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_enable=bool(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/TorqueEnableRequest value.
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
// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsTorqueEnableRequest :: proc(v: ^Ros1Interbotix_xs_msgsTorqueEnableRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=265}
 if !write_Ros1Interbotix_xs_msgsTorqueEnableRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=265}
 if !write_Ros1Interbotix_xs_msgsTorqueEnableRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/TorqueEnableRequest value.
// @details Require the complete 9..265-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsTorqueEnableRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsTorqueEnableRequest,u32) {
 if len(bytes)<9 || len(bytes)>265 { return Ros1Interbotix_xs_msgsTorqueEnableRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsTorqueEnableRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsTorqueEnableRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/TorqueEnableResponse value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTorqueEnableResponse :: struct {
}
// @brief Maximum canonical extent of interbotix_xs_msgs/TorqueEnableResponse in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTorqueEnableResponse_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of interbotix_xs_msgs/TorqueEnableResponse.
// @details Exact identity UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTorqueEnableResponse_Codec_Identity :: "UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44"
// @brief Original ROS type name for interbotix_xs_msgs/TorqueEnableResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTorqueEnableResponse_Native_Type :: "interbotix_xs_msgs/TorqueEnableResponse"
// @brief Selected original native identity for interbotix_xs_msgs/TorqueEnableResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTorqueEnableResponse_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/TorqueEnableResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsTorqueEnableResponse :: proc() -> Ros1Interbotix_xs_msgsTorqueEnableResponse {
 v: Ros1Interbotix_xs_msgsTorqueEnableResponse
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/TorqueEnableResponse.
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
// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsTorqueEnableResponse :: proc(v: ^Ros1Interbotix_xs_msgsTorqueEnableResponse, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/TorqueEnableResponse.
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
// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsTorqueEnableResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsTorqueEnableResponse,bool) {
 v:=init_Ros1Interbotix_xs_msgsTorqueEnableResponse()
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/TorqueEnableResponse value.
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
// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsTorqueEnableResponse :: proc(v: ^Ros1Interbotix_xs_msgsTorqueEnableResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Interbotix_xs_msgsTorqueEnableResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Interbotix_xs_msgsTorqueEnableResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/TorqueEnableResponse value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsTorqueEnableResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsTorqueEnableResponse,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Interbotix_xs_msgsTorqueEnableResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsTorqueEnableResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsTorqueEnableResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 interbotix_xs_msgs/TurretJoy value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTurretJoy :: struct {
 // @brief interbotix_xs_msgs/TurretJoy.pan_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
 field_pan_cmd: i8,
 // @brief interbotix_xs_msgs/TurretJoy.tilt_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
 field_tilt_cmd: i8,
 // @brief interbotix_xs_msgs/TurretJoy.speed_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_cmd: i8,
 // @brief interbotix_xs_msgs/TurretJoy.speed_toggle_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_toggle_cmd: i8,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/TurretJoy in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTurretJoy_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of interbotix_xs_msgs/TurretJoy.
// @details Exact identity UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTurretJoy_Codec_Identity :: "UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70"
// @brief Original ROS type name for interbotix_xs_msgs/TurretJoy.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTurretJoy_Native_Type :: "interbotix_xs_msgs/TurretJoy"
// @brief Selected original native identity for interbotix_xs_msgs/TurretJoy.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTurretJoy_Native_Identity :: ""
// @brief interbotix_xs_msgs/TurretJoy.PAN_CCW: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTurretJoy_PAN_CCW :: i8(1)
// @brief interbotix_xs_msgs/TurretJoy.PAN_CW: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTurretJoy_PAN_CW :: i8(2)
// @brief interbotix_xs_msgs/TurretJoy.TILT_UP: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTurretJoy_TILT_UP :: i8(3)
// @brief interbotix_xs_msgs/TurretJoy.TILT_DOWN: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTurretJoy_TILT_DOWN :: i8(4)
// @brief interbotix_xs_msgs/TurretJoy.PAN_TILT_HOME: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTurretJoy_PAN_TILT_HOME :: i8(5)
// @brief interbotix_xs_msgs/TurretJoy.SPEED_INC: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTurretJoy_SPEED_INC :: i8(6)
// @brief interbotix_xs_msgs/TurretJoy.SPEED_DEC: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTurretJoy_SPEED_DEC :: i8(7)
// @brief interbotix_xs_msgs/TurretJoy.SPEED_COURSE: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTurretJoy_SPEED_COURSE :: i8(8)
// @brief interbotix_xs_msgs/TurretJoy.SPEED_FINE: original int8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros1Interbotix_xs_msgsTurretJoy_SPEED_FINE :: i8(9)
// @brief Construct the declared defaults of interbotix_xs_msgs/TurretJoy.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Interbotix_xs_msgsTurretJoy :: proc() -> Ros1Interbotix_xs_msgsTurretJoy {
 v: Ros1Interbotix_xs_msgsTurretJoy
 v.field_pan_cmd = 0
 v.field_tilt_cmd = 0
 v.field_speed_cmd = 0
 v.field_speed_toggle_cmd = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/TurretJoy.
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
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Interbotix_xs_msgsTurretJoy :: proc(v: ^Ros1Interbotix_xs_msgsTurretJoy, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_pan_cmd),1) { return false }
 if !put_integer(w,u64(v.field_tilt_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_toggle_cmd),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/TurretJoy.
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
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Interbotix_xs_msgsTurretJoy :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsTurretJoy,bool) {
 v:=init_Ros1Interbotix_xs_msgsTurretJoy()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pan_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_tilt_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed_toggle_cmd=i8(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/TurretJoy value.
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
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Interbotix_xs_msgsTurretJoy :: proc(v: ^Ros1Interbotix_xs_msgsTurretJoy, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros1Interbotix_xs_msgsTurretJoy(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros1Interbotix_xs_msgsTurretJoy(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/TurretJoy value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Interbotix_xs_msgsTurretJoy :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Interbotix_xs_msgsTurretJoy,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros1Interbotix_xs_msgsTurretJoy{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Interbotix_xs_msgsTurretJoy(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Interbotix_xs_msgsTurretJoy{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/ClearErrRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsClearErrRequest :: struct {
}
// @brief Maximum canonical extent of xarm_msgs/ClearErrRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsClearErrRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of xarm_msgs/ClearErrRequest.
// @details Exact identity UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsClearErrRequest_Codec_Identity :: "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8"
// @brief Original ROS type name for xarm_msgs/ClearErrRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsClearErrRequest_Native_Type :: "xarm_msgs/ClearErrRequest"
// @brief Selected original native identity for xarm_msgs/ClearErrRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsClearErrRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/ClearErrRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsClearErrRequest :: proc() -> Ros1Xarm_msgsClearErrRequest {
 v: Ros1Xarm_msgsClearErrRequest
 return v
}
// @brief Append every canonical field of xarm_msgs/ClearErrRequest.
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
// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsClearErrRequest :: proc(v: ^Ros1Xarm_msgsClearErrRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/ClearErrRequest.
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
// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsClearErrRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsClearErrRequest,bool) {
 v:=init_Ros1Xarm_msgsClearErrRequest()
 return v,true
}
// @brief Encode one complete xarm_msgs/ClearErrRequest value.
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
// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsClearErrRequest :: proc(v: ^Ros1Xarm_msgsClearErrRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Xarm_msgsClearErrRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Xarm_msgsClearErrRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/ClearErrRequest value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsClearErrRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsClearErrRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Xarm_msgsClearErrRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsClearErrRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsClearErrRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/ClearErrResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
// and is identified by UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsClearErrResponse :: struct {
 // @brief xarm_msgs/ClearErrResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/odin/API.md
 field_ret: i16,
 // @brief xarm_msgs/ClearErrResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/ClearErrResponse in bytes.
// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsClearErrResponse_Maximum_Wire_Bytes :: 134
// @brief Canonical codec identity of xarm_msgs/ClearErrResponse.
// @details Exact identity UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsClearErrResponse_Codec_Identity :: "UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1"
// @brief Original ROS type name for xarm_msgs/ClearErrResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsClearErrResponse_Native_Type :: "xarm_msgs/ClearErrResponse"
// @brief Selected original native identity for xarm_msgs/ClearErrResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsClearErrResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/ClearErrResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsClearErrResponse :: proc() -> Ros1Xarm_msgsClearErrResponse {
 v: Ros1Xarm_msgsClearErrResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/ClearErrResponse.
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
// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsClearErrResponse :: proc(v: ^Ros1Xarm_msgsClearErrResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/ClearErrResponse.
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
// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsClearErrResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsClearErrResponse,bool) {
 v:=init_Ros1Xarm_msgsClearErrResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/ClearErrResponse value.
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
// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsClearErrResponse :: proc(v: ^Ros1Xarm_msgsClearErrResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=134}
 if !write_Ros1Xarm_msgsClearErrResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=134}
 if !write_Ros1Xarm_msgsClearErrResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/ClearErrResponse value.
// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsClearErrResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsClearErrResponse,u32) {
 if len(bytes)<6 || len(bytes)>134 { return Ros1Xarm_msgsClearErrResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsClearErrResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsClearErrResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/ConfigToolModbusRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsConfigToolModbusRequest :: struct {
 // @brief xarm_msgs/ConfigToolModbusRequest.baud_rate: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
 field_baud_rate: i32,
 // @brief xarm_msgs/ConfigToolModbusRequest.timeout_ms: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
 field_timeout_ms: i32,
}
// @brief Maximum canonical extent of xarm_msgs/ConfigToolModbusRequest in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsConfigToolModbusRequest_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of xarm_msgs/ConfigToolModbusRequest.
// @details Exact identity UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsConfigToolModbusRequest_Codec_Identity :: "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5"
// @brief Original ROS type name for xarm_msgs/ConfigToolModbusRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsConfigToolModbusRequest_Native_Type :: "xarm_msgs/ConfigToolModbusRequest"
// @brief Selected original native identity for xarm_msgs/ConfigToolModbusRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsConfigToolModbusRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/ConfigToolModbusRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsConfigToolModbusRequest :: proc() -> Ros1Xarm_msgsConfigToolModbusRequest {
 v: Ros1Xarm_msgsConfigToolModbusRequest
 v.field_baud_rate = 0
 v.field_timeout_ms = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/ConfigToolModbusRequest.
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
// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsConfigToolModbusRequest :: proc(v: ^Ros1Xarm_msgsConfigToolModbusRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_baud_rate),4) { return false }
 if !put_integer(w,u64(v.field_timeout_ms),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/ConfigToolModbusRequest.
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
// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsConfigToolModbusRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsConfigToolModbusRequest,bool) {
 v:=init_Ros1Xarm_msgsConfigToolModbusRequest()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_baud_rate=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_timeout_ms=i32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/ConfigToolModbusRequest value.
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
// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsConfigToolModbusRequest :: proc(v: ^Ros1Xarm_msgsConfigToolModbusRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Xarm_msgsConfigToolModbusRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Xarm_msgsConfigToolModbusRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/ConfigToolModbusRequest value.
// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsConfigToolModbusRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsConfigToolModbusRequest,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Xarm_msgsConfigToolModbusRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsConfigToolModbusRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsConfigToolModbusRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/ConfigToolModbusResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
// and is identified by UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsConfigToolModbusResponse :: struct {
 // @brief xarm_msgs/ConfigToolModbusResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
 // @brief xarm_msgs/ConfigToolModbusResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
 field_ret: i16,
}
// @brief Maximum canonical extent of xarm_msgs/ConfigToolModbusResponse in bytes.
// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsConfigToolModbusResponse_Maximum_Wire_Bytes :: 134
// @brief Canonical codec identity of xarm_msgs/ConfigToolModbusResponse.
// @details Exact identity UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsConfigToolModbusResponse_Codec_Identity :: "UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b"
// @brief Original ROS type name for xarm_msgs/ConfigToolModbusResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsConfigToolModbusResponse_Native_Type :: "xarm_msgs/ConfigToolModbusResponse"
// @brief Selected original native identity for xarm_msgs/ConfigToolModbusResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsConfigToolModbusResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/ConfigToolModbusResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsConfigToolModbusResponse :: proc() -> Ros1Xarm_msgsConfigToolModbusResponse {
 v: Ros1Xarm_msgsConfigToolModbusResponse
 v.field_message = ""
 v.field_ret = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/ConfigToolModbusResponse.
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
// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsConfigToolModbusResponse :: proc(v: ^Ros1Xarm_msgsConfigToolModbusResponse, w: ^Writer) -> bool {
 if !put_string(w,v.field_message,128) { return false }
 if !put_integer(w,u64(v.field_ret),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/ConfigToolModbusResponse.
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
// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsConfigToolModbusResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsConfigToolModbusResponse,bool) {
 v:=init_Ros1Xarm_msgsConfigToolModbusResponse()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/ConfigToolModbusResponse value.
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
// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsConfigToolModbusResponse :: proc(v: ^Ros1Xarm_msgsConfigToolModbusResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=134}
 if !write_Ros1Xarm_msgsConfigToolModbusResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=134}
 if !write_Ros1Xarm_msgsConfigToolModbusResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/ConfigToolModbusResponse value.
// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsConfigToolModbusResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsConfigToolModbusResponse,u32) {
 if len(bytes)<6 || len(bytes)>134 { return Ros1Xarm_msgsConfigToolModbusResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsConfigToolModbusResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsConfigToolModbusResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetAnalogIORequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and
// is identified by UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetAnalogIORequest :: struct {
 // @brief xarm_msgs/GetAnalogIORequest.port_num: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/odin/API.md
 field_port_num: i16,
}
// @brief Maximum canonical extent of xarm_msgs/GetAnalogIORequest in bytes.
// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetAnalogIORequest_Maximum_Wire_Bytes :: 2
// @brief Canonical codec identity of xarm_msgs/GetAnalogIORequest.
// @details Exact identity UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetAnalogIORequest_Codec_Identity :: "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8"
// @brief Original ROS type name for xarm_msgs/GetAnalogIORequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetAnalogIORequest_Native_Type :: "xarm_msgs/GetAnalogIORequest"
// @brief Selected original native identity for xarm_msgs/GetAnalogIORequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetAnalogIORequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetAnalogIORequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsGetAnalogIORequest :: proc() -> Ros1Xarm_msgsGetAnalogIORequest {
 v: Ros1Xarm_msgsGetAnalogIORequest
 v.field_port_num = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/GetAnalogIORequest.
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
// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsGetAnalogIORequest :: proc(v: ^Ros1Xarm_msgsGetAnalogIORequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_port_num),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetAnalogIORequest.
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
// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsGetAnalogIORequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetAnalogIORequest,bool) {
 v:=init_Ros1Xarm_msgsGetAnalogIORequest()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_port_num=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetAnalogIORequest value.
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
// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsGetAnalogIORequest :: proc(v: ^Ros1Xarm_msgsGetAnalogIORequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2}
 if !write_Ros1Xarm_msgsGetAnalogIORequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2}
 if !write_Ros1Xarm_msgsGetAnalogIORequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetAnalogIORequest value.
// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsGetAnalogIORequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetAnalogIORequest,u32) {
 if len(bytes)<2 || len(bytes)>2 { return Ros1Xarm_msgsGetAnalogIORequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetAnalogIORequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetAnalogIORequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetAnalogIOResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 10..138 bytes
// and is identified by UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetAnalogIOResponse :: struct {
 // @brief xarm_msgs/GetAnalogIOResponse.analog_value: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/odin/API.md
 field_analog_value: f32,
 // @brief xarm_msgs/GetAnalogIOResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/odin/API.md
 field_ret: i16,
 // @brief xarm_msgs/GetAnalogIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/GetAnalogIOResponse in bytes.
// @details The inclusive bound is 138 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetAnalogIOResponse_Maximum_Wire_Bytes :: 138
// @brief Canonical codec identity of xarm_msgs/GetAnalogIOResponse.
// @details Exact identity UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetAnalogIOResponse_Codec_Identity :: "UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968"
// @brief Original ROS type name for xarm_msgs/GetAnalogIOResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetAnalogIOResponse_Native_Type :: "xarm_msgs/GetAnalogIOResponse"
// @brief Selected original native identity for xarm_msgs/GetAnalogIOResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetAnalogIOResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetAnalogIOResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsGetAnalogIOResponse :: proc() -> Ros1Xarm_msgsGetAnalogIOResponse {
 v: Ros1Xarm_msgsGetAnalogIOResponse
 v.field_analog_value = 0
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/GetAnalogIOResponse.
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
// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsGetAnalogIOResponse :: proc(v: ^Ros1Xarm_msgsGetAnalogIOResponse, w: ^Writer) -> bool {
 if !put_float32(w,v.field_analog_value) { return false }
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetAnalogIOResponse.
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
// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsGetAnalogIOResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetAnalogIOResponse,bool) {
 v:=init_Ros1Xarm_msgsGetAnalogIOResponse()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_analog_value=f32(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetAnalogIOResponse value.
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
// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsGetAnalogIOResponse :: proc(v: ^Ros1Xarm_msgsGetAnalogIOResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=138}
 if !write_Ros1Xarm_msgsGetAnalogIOResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=138}
 if !write_Ros1Xarm_msgsGetAnalogIOResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetAnalogIOResponse value.
// @details Require the complete 10..138-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsGetAnalogIOResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetAnalogIOResponse,u32) {
 if len(bytes)<10 || len(bytes)>138 { return Ros1Xarm_msgsGetAnalogIOResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetAnalogIOResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetAnalogIOResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetControllerDigitalIORequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and
// is identified by UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetControllerDigitalIORequest :: struct {
 // @brief xarm_msgs/GetControllerDigitalIORequest.io_num: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
 field_io_num: i16,
}
// @brief Maximum canonical extent of xarm_msgs/GetControllerDigitalIORequest in bytes.
// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetControllerDigitalIORequest_Maximum_Wire_Bytes :: 2
// @brief Canonical codec identity of xarm_msgs/GetControllerDigitalIORequest.
// @details Exact identity UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetControllerDigitalIORequest_Codec_Identity :: "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c"
// @brief Original ROS type name for xarm_msgs/GetControllerDigitalIORequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetControllerDigitalIORequest_Native_Type :: "xarm_msgs/GetControllerDigitalIORequest"
// @brief Selected original native identity for xarm_msgs/GetControllerDigitalIORequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetControllerDigitalIORequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetControllerDigitalIORequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsGetControllerDigitalIORequest :: proc() -> Ros1Xarm_msgsGetControllerDigitalIORequest {
 v: Ros1Xarm_msgsGetControllerDigitalIORequest
 v.field_io_num = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/GetControllerDigitalIORequest.
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
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsGetControllerDigitalIORequest :: proc(v: ^Ros1Xarm_msgsGetControllerDigitalIORequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_io_num),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetControllerDigitalIORequest.
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
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsGetControllerDigitalIORequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetControllerDigitalIORequest,bool) {
 v:=init_Ros1Xarm_msgsGetControllerDigitalIORequest()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_io_num=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetControllerDigitalIORequest value.
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
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsGetControllerDigitalIORequest :: proc(v: ^Ros1Xarm_msgsGetControllerDigitalIORequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2}
 if !write_Ros1Xarm_msgsGetControllerDigitalIORequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2}
 if !write_Ros1Xarm_msgsGetControllerDigitalIORequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetControllerDigitalIORequest value.
// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsGetControllerDigitalIORequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetControllerDigitalIORequest,u32) {
 if len(bytes)<2 || len(bytes)>2 { return Ros1Xarm_msgsGetControllerDigitalIORequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetControllerDigitalIORequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetControllerDigitalIORequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetControllerDigitalIOResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetControllerDigitalIOResponse :: struct {
 // @brief xarm_msgs/GetControllerDigitalIOResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
 field_ret: i16,
 // @brief xarm_msgs/GetControllerDigitalIOResponse.value: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
 field_value: i16,
 // @brief xarm_msgs/GetControllerDigitalIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/GetControllerDigitalIOResponse in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetControllerDigitalIOResponse_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of xarm_msgs/GetControllerDigitalIOResponse.
// @details Exact identity UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetControllerDigitalIOResponse_Codec_Identity :: "UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3"
// @brief Original ROS type name for xarm_msgs/GetControllerDigitalIOResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetControllerDigitalIOResponse_Native_Type :: "xarm_msgs/GetControllerDigitalIOResponse"
// @brief Selected original native identity for xarm_msgs/GetControllerDigitalIOResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetControllerDigitalIOResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetControllerDigitalIOResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsGetControllerDigitalIOResponse :: proc() -> Ros1Xarm_msgsGetControllerDigitalIOResponse {
 v: Ros1Xarm_msgsGetControllerDigitalIOResponse
 v.field_ret = 0
 v.field_value = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/GetControllerDigitalIOResponse.
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
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsGetControllerDigitalIOResponse :: proc(v: ^Ros1Xarm_msgsGetControllerDigitalIOResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_integer(w,u64(v.field_value),2) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetControllerDigitalIOResponse.
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
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsGetControllerDigitalIOResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetControllerDigitalIOResponse,bool) {
 v:=init_Ros1Xarm_msgsGetControllerDigitalIOResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_value=i16(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetControllerDigitalIOResponse value.
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
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsGetControllerDigitalIOResponse :: proc(v: ^Ros1Xarm_msgsGetControllerDigitalIOResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros1Xarm_msgsGetControllerDigitalIOResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros1Xarm_msgsGetControllerDigitalIOResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetControllerDigitalIOResponse value.
// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsGetControllerDigitalIOResponse :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros1Xarm_msgsGetControllerDigitalIOResponse,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros1Xarm_msgsGetControllerDigitalIOResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetControllerDigitalIOResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetControllerDigitalIOResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetDigitalIORequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetDigitalIORequest :: struct {
}
// @brief Maximum canonical extent of xarm_msgs/GetDigitalIORequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetDigitalIORequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of xarm_msgs/GetDigitalIORequest.
// @details Exact identity UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetDigitalIORequest_Codec_Identity :: "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da"
// @brief Original ROS type name for xarm_msgs/GetDigitalIORequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetDigitalIORequest_Native_Type :: "xarm_msgs/GetDigitalIORequest"
// @brief Selected original native identity for xarm_msgs/GetDigitalIORequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetDigitalIORequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetDigitalIORequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsGetDigitalIORequest :: proc() -> Ros1Xarm_msgsGetDigitalIORequest {
 v: Ros1Xarm_msgsGetDigitalIORequest
 return v
}
// @brief Append every canonical field of xarm_msgs/GetDigitalIORequest.
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
// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsGetDigitalIORequest :: proc(v: ^Ros1Xarm_msgsGetDigitalIORequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetDigitalIORequest.
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
// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsGetDigitalIORequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetDigitalIORequest,bool) {
 v:=init_Ros1Xarm_msgsGetDigitalIORequest()
 return v,true
}
// @brief Encode one complete xarm_msgs/GetDigitalIORequest value.
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
// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsGetDigitalIORequest :: proc(v: ^Ros1Xarm_msgsGetDigitalIORequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Xarm_msgsGetDigitalIORequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Xarm_msgsGetDigitalIORequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetDigitalIORequest value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsGetDigitalIORequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetDigitalIORequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Xarm_msgsGetDigitalIORequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetDigitalIORequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetDigitalIORequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetDigitalIOResponse value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 14..142 bytes
// and is identified by UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetDigitalIOResponse :: struct {
 // @brief xarm_msgs/GetDigitalIOResponse.digital_1: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
 field_digital_1: i32,
 // @brief xarm_msgs/GetDigitalIOResponse.digital_2: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
 field_digital_2: i32,
 // @brief xarm_msgs/GetDigitalIOResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
 field_ret: i16,
 // @brief xarm_msgs/GetDigitalIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/GetDigitalIOResponse in bytes.
// @details The inclusive bound is 142 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetDigitalIOResponse_Maximum_Wire_Bytes :: 142
// @brief Canonical codec identity of xarm_msgs/GetDigitalIOResponse.
// @details Exact identity UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetDigitalIOResponse_Codec_Identity :: "UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2"
// @brief Original ROS type name for xarm_msgs/GetDigitalIOResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetDigitalIOResponse_Native_Type :: "xarm_msgs/GetDigitalIOResponse"
// @brief Selected original native identity for xarm_msgs/GetDigitalIOResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetDigitalIOResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetDigitalIOResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsGetDigitalIOResponse :: proc() -> Ros1Xarm_msgsGetDigitalIOResponse {
 v: Ros1Xarm_msgsGetDigitalIOResponse
 v.field_digital_1 = 0
 v.field_digital_2 = 0
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/GetDigitalIOResponse.
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
// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsGetDigitalIOResponse :: proc(v: ^Ros1Xarm_msgsGetDigitalIOResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_digital_1),4) { return false }
 if !put_integer(w,u64(v.field_digital_2),4) { return false }
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetDigitalIOResponse.
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
// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsGetDigitalIOResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetDigitalIOResponse,bool) {
 v:=init_Ros1Xarm_msgsGetDigitalIOResponse()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_digital_1=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_digital_2=i32(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetDigitalIOResponse value.
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
// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsGetDigitalIOResponse :: proc(v: ^Ros1Xarm_msgsGetDigitalIOResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=142}
 if !write_Ros1Xarm_msgsGetDigitalIOResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=142}
 if !write_Ros1Xarm_msgsGetDigitalIOResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetDigitalIOResponse value.
// @details Require the complete 14..142-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsGetDigitalIOResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetDigitalIOResponse,u32) {
 if len(bytes)<14 || len(bytes)>142 { return Ros1Xarm_msgsGetDigitalIOResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetDigitalIOResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetDigitalIOResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetErrRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetErrRequest :: struct {
}
// @brief Maximum canonical extent of xarm_msgs/GetErrRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetErrRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of xarm_msgs/GetErrRequest.
// @details Exact identity UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetErrRequest_Codec_Identity :: "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531"
// @brief Original ROS type name for xarm_msgs/GetErrRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetErrRequest_Native_Type :: "xarm_msgs/GetErrRequest"
// @brief Selected original native identity for xarm_msgs/GetErrRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetErrRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetErrRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsGetErrRequest :: proc() -> Ros1Xarm_msgsGetErrRequest {
 v: Ros1Xarm_msgsGetErrRequest
 return v
}
// @brief Append every canonical field of xarm_msgs/GetErrRequest.
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
// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsGetErrRequest :: proc(v: ^Ros1Xarm_msgsGetErrRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetErrRequest.
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
// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsGetErrRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetErrRequest,bool) {
 v:=init_Ros1Xarm_msgsGetErrRequest()
 return v,true
}
// @brief Encode one complete xarm_msgs/GetErrRequest value.
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
// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsGetErrRequest :: proc(v: ^Ros1Xarm_msgsGetErrRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Xarm_msgsGetErrRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Xarm_msgsGetErrRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetErrRequest value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsGetErrRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetErrRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Xarm_msgsGetErrRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetErrRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetErrRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetErrResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
// and is identified by UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetErrResponse :: struct {
 // @brief xarm_msgs/GetErrResponse.err: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/odin/API.md
 field_err: i16,
 // @brief xarm_msgs/GetErrResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/GetErrResponse in bytes.
// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetErrResponse_Maximum_Wire_Bytes :: 134
// @brief Canonical codec identity of xarm_msgs/GetErrResponse.
// @details Exact identity UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetErrResponse_Codec_Identity :: "UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037"
// @brief Original ROS type name for xarm_msgs/GetErrResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetErrResponse_Native_Type :: "xarm_msgs/GetErrResponse"
// @brief Selected original native identity for xarm_msgs/GetErrResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGetErrResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetErrResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsGetErrResponse :: proc() -> Ros1Xarm_msgsGetErrResponse {
 v: Ros1Xarm_msgsGetErrResponse
 v.field_err = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/GetErrResponse.
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
// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsGetErrResponse :: proc(v: ^Ros1Xarm_msgsGetErrResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_err),2) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetErrResponse.
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
// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsGetErrResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetErrResponse,bool) {
 v:=init_Ros1Xarm_msgsGetErrResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_err=i16(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetErrResponse value.
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
// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsGetErrResponse :: proc(v: ^Ros1Xarm_msgsGetErrResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=134}
 if !write_Ros1Xarm_msgsGetErrResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=134}
 if !write_Ros1Xarm_msgsGetErrResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetErrResponse value.
// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsGetErrResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetErrResponse,u32) {
 if len(bytes)<6 || len(bytes)>134 { return Ros1Xarm_msgsGetErrResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetErrResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetErrResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GripperConfigRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperConfigRequest :: struct {
 // @brief xarm_msgs/GripperConfigRequest.pulse_vel: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/odin/API.md
 field_pulse_vel: f32,
}
// @brief Maximum canonical extent of xarm_msgs/GripperConfigRequest in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperConfigRequest_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of xarm_msgs/GripperConfigRequest.
// @details Exact identity UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperConfigRequest_Codec_Identity :: "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4"
// @brief Original ROS type name for xarm_msgs/GripperConfigRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperConfigRequest_Native_Type :: "xarm_msgs/GripperConfigRequest"
// @brief Selected original native identity for xarm_msgs/GripperConfigRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperConfigRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GripperConfigRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsGripperConfigRequest :: proc() -> Ros1Xarm_msgsGripperConfigRequest {
 v: Ros1Xarm_msgsGripperConfigRequest
 v.field_pulse_vel = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/GripperConfigRequest.
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
// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsGripperConfigRequest :: proc(v: ^Ros1Xarm_msgsGripperConfigRequest, w: ^Writer) -> bool {
 if !put_float32(w,v.field_pulse_vel) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GripperConfigRequest.
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
// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsGripperConfigRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperConfigRequest,bool) {
 v:=init_Ros1Xarm_msgsGripperConfigRequest()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_pulse_vel=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GripperConfigRequest value.
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
// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsGripperConfigRequest :: proc(v: ^Ros1Xarm_msgsGripperConfigRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros1Xarm_msgsGripperConfigRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros1Xarm_msgsGripperConfigRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GripperConfigRequest value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsGripperConfigRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperConfigRequest,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros1Xarm_msgsGripperConfigRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGripperConfigRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGripperConfigRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GripperConfigResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
// and is identified by UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperConfigResponse :: struct {
 // @brief xarm_msgs/GripperConfigResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/odin/API.md
 field_ret: i16,
 // @brief xarm_msgs/GripperConfigResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/GripperConfigResponse in bytes.
// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperConfigResponse_Maximum_Wire_Bytes :: 134
// @brief Canonical codec identity of xarm_msgs/GripperConfigResponse.
// @details Exact identity UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperConfigResponse_Codec_Identity :: "UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5"
// @brief Original ROS type name for xarm_msgs/GripperConfigResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperConfigResponse_Native_Type :: "xarm_msgs/GripperConfigResponse"
// @brief Selected original native identity for xarm_msgs/GripperConfigResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperConfigResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GripperConfigResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsGripperConfigResponse :: proc() -> Ros1Xarm_msgsGripperConfigResponse {
 v: Ros1Xarm_msgsGripperConfigResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/GripperConfigResponse.
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
// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsGripperConfigResponse :: proc(v: ^Ros1Xarm_msgsGripperConfigResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GripperConfigResponse.
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
// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsGripperConfigResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperConfigResponse,bool) {
 v:=init_Ros1Xarm_msgsGripperConfigResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GripperConfigResponse value.
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
// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsGripperConfigResponse :: proc(v: ^Ros1Xarm_msgsGripperConfigResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=134}
 if !write_Ros1Xarm_msgsGripperConfigResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=134}
 if !write_Ros1Xarm_msgsGripperConfigResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GripperConfigResponse value.
// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsGripperConfigResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperConfigResponse,u32) {
 if len(bytes)<6 || len(bytes)>134 { return Ros1Xarm_msgsGripperConfigResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGripperConfigResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGripperConfigResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GripperMoveRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperMoveRequest :: struct {
 // @brief xarm_msgs/GripperMoveRequest.pulse_pos: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/odin/API.md
 field_pulse_pos: f32,
}
// @brief Maximum canonical extent of xarm_msgs/GripperMoveRequest in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperMoveRequest_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of xarm_msgs/GripperMoveRequest.
// @details Exact identity UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperMoveRequest_Codec_Identity :: "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2"
// @brief Original ROS type name for xarm_msgs/GripperMoveRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperMoveRequest_Native_Type :: "xarm_msgs/GripperMoveRequest"
// @brief Selected original native identity for xarm_msgs/GripperMoveRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperMoveRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GripperMoveRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsGripperMoveRequest :: proc() -> Ros1Xarm_msgsGripperMoveRequest {
 v: Ros1Xarm_msgsGripperMoveRequest
 v.field_pulse_pos = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/GripperMoveRequest.
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
// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsGripperMoveRequest :: proc(v: ^Ros1Xarm_msgsGripperMoveRequest, w: ^Writer) -> bool {
 if !put_float32(w,v.field_pulse_pos) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GripperMoveRequest.
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
// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsGripperMoveRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperMoveRequest,bool) {
 v:=init_Ros1Xarm_msgsGripperMoveRequest()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_pulse_pos=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GripperMoveRequest value.
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
// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsGripperMoveRequest :: proc(v: ^Ros1Xarm_msgsGripperMoveRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros1Xarm_msgsGripperMoveRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros1Xarm_msgsGripperMoveRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GripperMoveRequest value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsGripperMoveRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperMoveRequest,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros1Xarm_msgsGripperMoveRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGripperMoveRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGripperMoveRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GripperMoveResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
// and is identified by UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperMoveResponse :: struct {
 // @brief xarm_msgs/GripperMoveResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/odin/API.md
 field_ret: i16,
 // @brief xarm_msgs/GripperMoveResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/GripperMoveResponse in bytes.
// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperMoveResponse_Maximum_Wire_Bytes :: 134
// @brief Canonical codec identity of xarm_msgs/GripperMoveResponse.
// @details Exact identity UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperMoveResponse_Codec_Identity :: "UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998"
// @brief Original ROS type name for xarm_msgs/GripperMoveResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperMoveResponse_Native_Type :: "xarm_msgs/GripperMoveResponse"
// @brief Selected original native identity for xarm_msgs/GripperMoveResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperMoveResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GripperMoveResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsGripperMoveResponse :: proc() -> Ros1Xarm_msgsGripperMoveResponse {
 v: Ros1Xarm_msgsGripperMoveResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/GripperMoveResponse.
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
// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsGripperMoveResponse :: proc(v: ^Ros1Xarm_msgsGripperMoveResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GripperMoveResponse.
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
// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsGripperMoveResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperMoveResponse,bool) {
 v:=init_Ros1Xarm_msgsGripperMoveResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GripperMoveResponse value.
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
// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsGripperMoveResponse :: proc(v: ^Ros1Xarm_msgsGripperMoveResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=134}
 if !write_Ros1Xarm_msgsGripperMoveResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=134}
 if !write_Ros1Xarm_msgsGripperMoveResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GripperMoveResponse value.
// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsGripperMoveResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperMoveResponse,u32) {
 if len(bytes)<6 || len(bytes)>134 { return Ros1Xarm_msgsGripperMoveResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGripperMoveResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGripperMoveResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GripperStateRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperStateRequest :: struct {
}
// @brief Maximum canonical extent of xarm_msgs/GripperStateRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperStateRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of xarm_msgs/GripperStateRequest.
// @details Exact identity UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperStateRequest_Codec_Identity :: "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d"
// @brief Original ROS type name for xarm_msgs/GripperStateRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperStateRequest_Native_Type :: "xarm_msgs/GripperStateRequest"
// @brief Selected original native identity for xarm_msgs/GripperStateRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperStateRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GripperStateRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsGripperStateRequest :: proc() -> Ros1Xarm_msgsGripperStateRequest {
 v: Ros1Xarm_msgsGripperStateRequest
 return v
}
// @brief Append every canonical field of xarm_msgs/GripperStateRequest.
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
// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsGripperStateRequest :: proc(v: ^Ros1Xarm_msgsGripperStateRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GripperStateRequest.
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
// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsGripperStateRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperStateRequest,bool) {
 v:=init_Ros1Xarm_msgsGripperStateRequest()
 return v,true
}
// @brief Encode one complete xarm_msgs/GripperStateRequest value.
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
// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsGripperStateRequest :: proc(v: ^Ros1Xarm_msgsGripperStateRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Xarm_msgsGripperStateRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Xarm_msgsGripperStateRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GripperStateRequest value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsGripperStateRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperStateRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Xarm_msgsGripperStateRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGripperStateRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGripperStateRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GripperStateResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and
// is identified by UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperStateResponse :: struct {
 // @brief xarm_msgs/GripperStateResponse.curr_pos: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/odin/API.md
 field_curr_pos: f32,
 // @brief xarm_msgs/GripperStateResponse.err_code: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/odin/API.md
 field_err_code: i16,
}
// @brief Maximum canonical extent of xarm_msgs/GripperStateResponse in bytes.
// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperStateResponse_Maximum_Wire_Bytes :: 6
// @brief Canonical codec identity of xarm_msgs/GripperStateResponse.
// @details Exact identity UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperStateResponse_Codec_Identity :: "UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4"
// @brief Original ROS type name for xarm_msgs/GripperStateResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperStateResponse_Native_Type :: "xarm_msgs/GripperStateResponse"
// @brief Selected original native identity for xarm_msgs/GripperStateResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsGripperStateResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GripperStateResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsGripperStateResponse :: proc() -> Ros1Xarm_msgsGripperStateResponse {
 v: Ros1Xarm_msgsGripperStateResponse
 v.field_curr_pos = 0
 v.field_err_code = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/GripperStateResponse.
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
// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsGripperStateResponse :: proc(v: ^Ros1Xarm_msgsGripperStateResponse, w: ^Writer) -> bool {
 if !put_float32(w,v.field_curr_pos) { return false }
 if !put_integer(w,u64(v.field_err_code),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GripperStateResponse.
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
// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsGripperStateResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperStateResponse,bool) {
 v:=init_Ros1Xarm_msgsGripperStateResponse()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_curr_pos=f32(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_err_code=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GripperStateResponse value.
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
// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsGripperStateResponse :: proc(v: ^Ros1Xarm_msgsGripperStateResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=6}
 if !write_Ros1Xarm_msgsGripperStateResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=6}
 if !write_Ros1Xarm_msgsGripperStateResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GripperStateResponse value.
// @details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsGripperStateResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperStateResponse,u32) {
 if len(bytes)<6 || len(bytes)>6 { return Ros1Xarm_msgsGripperStateResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGripperStateResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGripperStateResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/IOState value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16 bytes
// and is identified by UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsIOState :: struct {
 // @brief xarm_msgs/IOState.digital_1: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/odin/API.md
 field_digital_1: i32,
 // @brief xarm_msgs/IOState.digital_2: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/odin/API.md
 field_digital_2: i32,
 // @brief xarm_msgs/IOState.analog_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/odin/API.md
 field_analog_1: f32,
 // @brief xarm_msgs/IOState.analog_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/odin/API.md
 field_analog_2: f32,
}
// @brief Maximum canonical extent of xarm_msgs/IOState in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsIOState_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of xarm_msgs/IOState.
// @details Exact identity UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsIOState_Codec_Identity :: "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996"
// @brief Original ROS type name for xarm_msgs/IOState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsIOState_Native_Type :: "xarm_msgs/IOState"
// @brief Selected original native identity for xarm_msgs/IOState.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsIOState_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/IOState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsIOState :: proc() -> Ros1Xarm_msgsIOState {
 v: Ros1Xarm_msgsIOState
 v.field_digital_1 = 0
 v.field_digital_2 = 0
 v.field_analog_1 = 0
 v.field_analog_2 = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/IOState.
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
// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsIOState :: proc(v: ^Ros1Xarm_msgsIOState, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_digital_1),4) { return false }
 if !put_integer(w,u64(v.field_digital_2),4) { return false }
 if !put_float32(w,v.field_analog_1) { return false }
 if !put_float32(w,v.field_analog_2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/IOState.
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
// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsIOState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsIOState,bool) {
 v:=init_Ros1Xarm_msgsIOState()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_digital_1=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_digital_2=i32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_analog_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_analog_2=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/IOState value.
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
// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsIOState :: proc(v: ^Ros1Xarm_msgsIOState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros1Xarm_msgsIOState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros1Xarm_msgsIOState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/IOState value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsIOState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsIOState,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros1Xarm_msgsIOState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsIOState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsIOState{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/MoveRequest value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 20..84 bytes
// and is identified by UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsMoveRequest :: struct {
 // @brief xarm_msgs/MoveRequest.pose: float32; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/odin/API.md
 field_pose: []f32,
 // @brief xarm_msgs/MoveRequest.mvvelo: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/odin/API.md
 field_mvvelo: f32,
 // @brief xarm_msgs/MoveRequest.mvacc: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/odin/API.md
 field_mvacc: f32,
 // @brief xarm_msgs/MoveRequest.mvtime: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/odin/API.md
 field_mvtime: f32,
 // @brief xarm_msgs/MoveRequest.mvradii: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/odin/API.md
 field_mvradii: f32,
}
// @brief Maximum canonical extent of xarm_msgs/MoveRequest in bytes.
// @details The inclusive bound is 84 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsMoveRequest_Maximum_Wire_Bytes :: 84
// @brief Canonical codec identity of xarm_msgs/MoveRequest.
// @details Exact identity UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsMoveRequest_Codec_Identity :: "UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5"
// @brief Original ROS type name for xarm_msgs/MoveRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsMoveRequest_Native_Type :: "xarm_msgs/MoveRequest"
// @brief Selected original native identity for xarm_msgs/MoveRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsMoveRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/MoveRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsMoveRequest :: proc() -> Ros1Xarm_msgsMoveRequest {
 v: Ros1Xarm_msgsMoveRequest
 v.field_pose = nil
 v.field_mvvelo = 0
 v.field_mvacc = 0
 v.field_mvtime = 0
 v.field_mvradii = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/MoveRequest.
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
// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsMoveRequest :: proc(v: ^Ros1Xarm_msgsMoveRequest, w: ^Writer) -> bool {
 if len(v.field_pose)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_pose)),4) { return false }
 for e in v.field_pose {
 if !put_float32(w,e) { return false }
 }
 if !put_float32(w,v.field_mvvelo) { return false }
 if !put_float32(w,v.field_mvacc) { return false }
 if !put_float32(w,v.field_mvtime) { return false }
 if !put_float32(w,v.field_mvradii) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/MoveRequest.
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
// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsMoveRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveRequest,bool) {
 v:=init_Ros1Xarm_msgsMoveRequest()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_pose=make([]f32,int(n),allocator)
 }
 for &e in v.field_pose {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_mvvelo=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_mvacc=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_mvtime=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_mvradii=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/MoveRequest value.
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
// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsMoveRequest :: proc(v: ^Ros1Xarm_msgsMoveRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=84}
 if !write_Ros1Xarm_msgsMoveRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=84}
 if !write_Ros1Xarm_msgsMoveRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/MoveRequest value.
// @details Require the complete 20..84-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsMoveRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveRequest,u32) {
 if len(bytes)<20 || len(bytes)>84 { return Ros1Xarm_msgsMoveRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsMoveRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsMoveRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/MoveResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
// and is identified by UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsMoveResponse :: struct {
 // @brief xarm_msgs/MoveResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/odin/API.md
 field_ret: i16,
 // @brief xarm_msgs/MoveResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/MoveResponse in bytes.
// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsMoveResponse_Maximum_Wire_Bytes :: 134
// @brief Canonical codec identity of xarm_msgs/MoveResponse.
// @details Exact identity UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsMoveResponse_Codec_Identity :: "UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658"
// @brief Original ROS type name for xarm_msgs/MoveResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsMoveResponse_Native_Type :: "xarm_msgs/MoveResponse"
// @brief Selected original native identity for xarm_msgs/MoveResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsMoveResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/MoveResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsMoveResponse :: proc() -> Ros1Xarm_msgsMoveResponse {
 v: Ros1Xarm_msgsMoveResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/MoveResponse.
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
// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsMoveResponse :: proc(v: ^Ros1Xarm_msgsMoveResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/MoveResponse.
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
// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsMoveResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveResponse,bool) {
 v:=init_Ros1Xarm_msgsMoveResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/MoveResponse value.
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
// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsMoveResponse :: proc(v: ^Ros1Xarm_msgsMoveResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=134}
 if !write_Ros1Xarm_msgsMoveResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=134}
 if !write_Ros1Xarm_msgsMoveResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/MoveResponse value.
// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsMoveResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveResponse,u32) {
 if len(bytes)<6 || len(bytes)>134 { return Ros1Xarm_msgsMoveResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsMoveResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsMoveResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/RobotMsg value.
// @details All 10 declared fields are retained in source order. The canonical representation occupies 66..130 bytes
// and is identified by UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsRobotMsg :: struct {
 // @brief xarm_msgs/RobotMsg.state: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
 field_state: i16,
 // @brief xarm_msgs/RobotMsg.mode: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
 field_mode: i16,
 // @brief xarm_msgs/RobotMsg.cmdnum: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
 field_cmdnum: i16,
 // @brief xarm_msgs/RobotMsg.mt_brake: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
 field_mt_brake: i16,
 // @brief xarm_msgs/RobotMsg.mt_able: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
 field_mt_able: i16,
 // @brief xarm_msgs/RobotMsg.err: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
 field_err: i16,
 // @brief xarm_msgs/RobotMsg.warn: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
 field_warn: i16,
 // @brief xarm_msgs/RobotMsg.angle: float32; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
 field_angle: []f32,
 // @brief xarm_msgs/RobotMsg.pose: float32; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
 field_pose: [6]f32,
 // @brief xarm_msgs/RobotMsg.offset: float32; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
 field_offset: [6]f32,
}
// @brief Maximum canonical extent of xarm_msgs/RobotMsg in bytes.
// @details The inclusive bound is 130 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsRobotMsg_Maximum_Wire_Bytes :: 130
// @brief Canonical codec identity of xarm_msgs/RobotMsg.
// @details Exact identity UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsRobotMsg_Codec_Identity :: "UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41"
// @brief Original ROS type name for xarm_msgs/RobotMsg.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsRobotMsg_Native_Type :: "xarm_msgs/RobotMsg"
// @brief Selected original native identity for xarm_msgs/RobotMsg.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsRobotMsg_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/RobotMsg.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsRobotMsg :: proc() -> Ros1Xarm_msgsRobotMsg {
 v: Ros1Xarm_msgsRobotMsg
 v.field_state = 0
 v.field_mode = 0
 v.field_cmdnum = 0
 v.field_mt_brake = 0
 v.field_mt_able = 0
 v.field_err = 0
 v.field_warn = 0
 v.field_angle = nil
 v.field_pose = [6]f32{0,0,0,0,0,0}
 v.field_offset = [6]f32{0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of xarm_msgs/RobotMsg.
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
// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsRobotMsg :: proc(v: ^Ros1Xarm_msgsRobotMsg, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_state),2) { return false }
 if !put_integer(w,u64(v.field_mode),2) { return false }
 if !put_integer(w,u64(v.field_cmdnum),2) { return false }
 if !put_integer(w,u64(v.field_mt_brake),2) { return false }
 if !put_integer(w,u64(v.field_mt_able),2) { return false }
 if !put_integer(w,u64(v.field_err),2) { return false }
 if !put_integer(w,u64(v.field_warn),2) { return false }
 if len(v.field_angle)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_angle)),4) { return false }
 for e in v.field_angle {
 if !put_float32(w,e) { return false }
 }
 for e in v.field_pose {
 if !put_float32(w,e) { return false }
 }
 for e in v.field_offset {
 if !put_float32(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/RobotMsg.
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
// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsRobotMsg :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsRobotMsg,bool) {
 v:=init_Ros1Xarm_msgsRobotMsg()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_state=i16(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_mode=i16(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_cmdnum=i16(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_mt_brake=i16(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_mt_able=i16(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_err=i16(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_warn=i16(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_angle=make([]f32,int(n),allocator)
 }
 for &e in v.field_angle {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 for &e in v.field_pose {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 for &e in v.field_offset {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/RobotMsg value.
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
// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsRobotMsg :: proc(v: ^Ros1Xarm_msgsRobotMsg, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=130}
 if !write_Ros1Xarm_msgsRobotMsg(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=130}
 if !write_Ros1Xarm_msgsRobotMsg(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/RobotMsg value.
// @details Require the complete 66..130-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsRobotMsg :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsRobotMsg,u32) {
 if len(bytes)<66 || len(bytes)>130 { return Ros1Xarm_msgsRobotMsg{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsRobotMsg(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsRobotMsg{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetAxisRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetAxisRequest :: struct {
 // @brief xarm_msgs/SetAxisRequest.id: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/odin/API.md
 field_id: i16,
 // @brief xarm_msgs/SetAxisRequest.data: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/odin/API.md
 field_data: i16,
}
// @brief Maximum canonical extent of xarm_msgs/SetAxisRequest in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetAxisRequest_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of xarm_msgs/SetAxisRequest.
// @details Exact identity UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetAxisRequest_Codec_Identity :: "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6"
// @brief Original ROS type name for xarm_msgs/SetAxisRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetAxisRequest_Native_Type :: "xarm_msgs/SetAxisRequest"
// @brief Selected original native identity for xarm_msgs/SetAxisRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetAxisRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetAxisRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsSetAxisRequest :: proc() -> Ros1Xarm_msgsSetAxisRequest {
 v: Ros1Xarm_msgsSetAxisRequest
 v.field_id = 0
 v.field_data = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/SetAxisRequest.
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
// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsSetAxisRequest :: proc(v: ^Ros1Xarm_msgsSetAxisRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_id),2) { return false }
 if !put_integer(w,u64(v.field_data),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetAxisRequest.
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
// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsSetAxisRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetAxisRequest,bool) {
 v:=init_Ros1Xarm_msgsSetAxisRequest()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_id=i16(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_data=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetAxisRequest value.
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
// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsSetAxisRequest :: proc(v: ^Ros1Xarm_msgsSetAxisRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros1Xarm_msgsSetAxisRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros1Xarm_msgsSetAxisRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetAxisRequest value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsSetAxisRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetAxisRequest,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros1Xarm_msgsSetAxisRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetAxisRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetAxisRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetAxisResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
// and is identified by UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetAxisResponse :: struct {
 // @brief xarm_msgs/SetAxisResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/odin/API.md
 field_ret: i16,
 // @brief xarm_msgs/SetAxisResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/SetAxisResponse in bytes.
// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetAxisResponse_Maximum_Wire_Bytes :: 134
// @brief Canonical codec identity of xarm_msgs/SetAxisResponse.
// @details Exact identity UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetAxisResponse_Codec_Identity :: "UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7"
// @brief Original ROS type name for xarm_msgs/SetAxisResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetAxisResponse_Native_Type :: "xarm_msgs/SetAxisResponse"
// @brief Selected original native identity for xarm_msgs/SetAxisResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetAxisResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetAxisResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsSetAxisResponse :: proc() -> Ros1Xarm_msgsSetAxisResponse {
 v: Ros1Xarm_msgsSetAxisResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/SetAxisResponse.
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
// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsSetAxisResponse :: proc(v: ^Ros1Xarm_msgsSetAxisResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetAxisResponse.
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
// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsSetAxisResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetAxisResponse,bool) {
 v:=init_Ros1Xarm_msgsSetAxisResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetAxisResponse value.
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
// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsSetAxisResponse :: proc(v: ^Ros1Xarm_msgsSetAxisResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=134}
 if !write_Ros1Xarm_msgsSetAxisResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=134}
 if !write_Ros1Xarm_msgsSetAxisResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetAxisResponse value.
// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsSetAxisResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetAxisResponse,u32) {
 if len(bytes)<6 || len(bytes)>134 { return Ros1Xarm_msgsSetAxisResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetAxisResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetAxisResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetDigitalIORequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetDigitalIORequest :: struct {
 // @brief xarm_msgs/SetDigitalIORequest.io_num: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
 field_io_num: i16,
 // @brief xarm_msgs/SetDigitalIORequest.value: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
 field_value: i16,
}
// @brief Maximum canonical extent of xarm_msgs/SetDigitalIORequest in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetDigitalIORequest_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of xarm_msgs/SetDigitalIORequest.
// @details Exact identity UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetDigitalIORequest_Codec_Identity :: "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959"
// @brief Original ROS type name for xarm_msgs/SetDigitalIORequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetDigitalIORequest_Native_Type :: "xarm_msgs/SetDigitalIORequest"
// @brief Selected original native identity for xarm_msgs/SetDigitalIORequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetDigitalIORequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetDigitalIORequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsSetDigitalIORequest :: proc() -> Ros1Xarm_msgsSetDigitalIORequest {
 v: Ros1Xarm_msgsSetDigitalIORequest
 v.field_io_num = 0
 v.field_value = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/SetDigitalIORequest.
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
// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsSetDigitalIORequest :: proc(v: ^Ros1Xarm_msgsSetDigitalIORequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_io_num),2) { return false }
 if !put_integer(w,u64(v.field_value),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetDigitalIORequest.
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
// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsSetDigitalIORequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetDigitalIORequest,bool) {
 v:=init_Ros1Xarm_msgsSetDigitalIORequest()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_io_num=i16(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_value=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetDigitalIORequest value.
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
// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsSetDigitalIORequest :: proc(v: ^Ros1Xarm_msgsSetDigitalIORequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros1Xarm_msgsSetDigitalIORequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros1Xarm_msgsSetDigitalIORequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetDigitalIORequest value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsSetDigitalIORequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetDigitalIORequest,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros1Xarm_msgsSetDigitalIORequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetDigitalIORequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetDigitalIORequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetDigitalIOResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
// and is identified by UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetDigitalIOResponse :: struct {
 // @brief xarm_msgs/SetDigitalIOResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
 field_ret: i16,
 // @brief xarm_msgs/SetDigitalIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/SetDigitalIOResponse in bytes.
// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetDigitalIOResponse_Maximum_Wire_Bytes :: 134
// @brief Canonical codec identity of xarm_msgs/SetDigitalIOResponse.
// @details Exact identity UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetDigitalIOResponse_Codec_Identity :: "UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c"
// @brief Original ROS type name for xarm_msgs/SetDigitalIOResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetDigitalIOResponse_Native_Type :: "xarm_msgs/SetDigitalIOResponse"
// @brief Selected original native identity for xarm_msgs/SetDigitalIOResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetDigitalIOResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetDigitalIOResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsSetDigitalIOResponse :: proc() -> Ros1Xarm_msgsSetDigitalIOResponse {
 v: Ros1Xarm_msgsSetDigitalIOResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/SetDigitalIOResponse.
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
// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsSetDigitalIOResponse :: proc(v: ^Ros1Xarm_msgsSetDigitalIOResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetDigitalIOResponse.
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
// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsSetDigitalIOResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetDigitalIOResponse,bool) {
 v:=init_Ros1Xarm_msgsSetDigitalIOResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetDigitalIOResponse value.
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
// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsSetDigitalIOResponse :: proc(v: ^Ros1Xarm_msgsSetDigitalIOResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=134}
 if !write_Ros1Xarm_msgsSetDigitalIOResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=134}
 if !write_Ros1Xarm_msgsSetDigitalIOResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetDigitalIOResponse value.
// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsSetDigitalIOResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetDigitalIOResponse,u32) {
 if len(bytes)<6 || len(bytes)>134 { return Ros1Xarm_msgsSetDigitalIOResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetDigitalIOResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetDigitalIOResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetInt16Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and
// is identified by UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetInt16Request :: struct {
 // @brief xarm_msgs/SetInt16Request.data: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/odin/API.md
 field_data: i16,
}
// @brief Maximum canonical extent of xarm_msgs/SetInt16Request in bytes.
// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetInt16Request_Maximum_Wire_Bytes :: 2
// @brief Canonical codec identity of xarm_msgs/SetInt16Request.
// @details Exact identity UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetInt16Request_Codec_Identity :: "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7"
// @brief Original ROS type name for xarm_msgs/SetInt16Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetInt16Request_Native_Type :: "xarm_msgs/SetInt16Request"
// @brief Selected original native identity for xarm_msgs/SetInt16Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetInt16Request_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetInt16Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsSetInt16Request :: proc() -> Ros1Xarm_msgsSetInt16Request {
 v: Ros1Xarm_msgsSetInt16Request
 v.field_data = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/SetInt16Request.
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
// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsSetInt16Request :: proc(v: ^Ros1Xarm_msgsSetInt16Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_data),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetInt16Request.
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
// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsSetInt16Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetInt16Request,bool) {
 v:=init_Ros1Xarm_msgsSetInt16Request()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_data=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetInt16Request value.
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
// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsSetInt16Request :: proc(v: ^Ros1Xarm_msgsSetInt16Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2}
 if !write_Ros1Xarm_msgsSetInt16Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2}
 if !write_Ros1Xarm_msgsSetInt16Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetInt16Request value.
// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsSetInt16Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetInt16Request,u32) {
 if len(bytes)<2 || len(bytes)>2 { return Ros1Xarm_msgsSetInt16Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetInt16Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetInt16Request{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetInt16Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
// and is identified by UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetInt16Response :: struct {
 // @brief xarm_msgs/SetInt16Response.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/odin/API.md
 field_ret: i16,
 // @brief xarm_msgs/SetInt16Response.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/SetInt16Response in bytes.
// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetInt16Response_Maximum_Wire_Bytes :: 134
// @brief Canonical codec identity of xarm_msgs/SetInt16Response.
// @details Exact identity UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetInt16Response_Codec_Identity :: "UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d"
// @brief Original ROS type name for xarm_msgs/SetInt16Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetInt16Response_Native_Type :: "xarm_msgs/SetInt16Response"
// @brief Selected original native identity for xarm_msgs/SetInt16Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetInt16Response_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetInt16Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsSetInt16Response :: proc() -> Ros1Xarm_msgsSetInt16Response {
 v: Ros1Xarm_msgsSetInt16Response
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/SetInt16Response.
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
// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsSetInt16Response :: proc(v: ^Ros1Xarm_msgsSetInt16Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetInt16Response.
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
// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsSetInt16Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetInt16Response,bool) {
 v:=init_Ros1Xarm_msgsSetInt16Response()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetInt16Response value.
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
// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsSetInt16Response :: proc(v: ^Ros1Xarm_msgsSetInt16Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=134}
 if !write_Ros1Xarm_msgsSetInt16Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=134}
 if !write_Ros1Xarm_msgsSetInt16Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetInt16Response value.
// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsSetInt16Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetInt16Response,u32) {
 if len(bytes)<6 || len(bytes)>134 { return Ros1Xarm_msgsSetInt16Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetInt16Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetInt16Response{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetLoadRequest value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16 bytes
// and is identified by UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetLoadRequest :: struct {
 // @brief xarm_msgs/SetLoadRequest.mass: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/odin/API.md
 field_mass: f32,
 // @brief xarm_msgs/SetLoadRequest.xc: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/odin/API.md
 field_xc: f32,
 // @brief xarm_msgs/SetLoadRequest.yc: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/odin/API.md
 field_yc: f32,
 // @brief xarm_msgs/SetLoadRequest.zc: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/odin/API.md
 field_zc: f32,
}
// @brief Maximum canonical extent of xarm_msgs/SetLoadRequest in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetLoadRequest_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of xarm_msgs/SetLoadRequest.
// @details Exact identity UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetLoadRequest_Codec_Identity :: "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077"
// @brief Original ROS type name for xarm_msgs/SetLoadRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetLoadRequest_Native_Type :: "xarm_msgs/SetLoadRequest"
// @brief Selected original native identity for xarm_msgs/SetLoadRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetLoadRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetLoadRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsSetLoadRequest :: proc() -> Ros1Xarm_msgsSetLoadRequest {
 v: Ros1Xarm_msgsSetLoadRequest
 v.field_mass = 0
 v.field_xc = 0
 v.field_yc = 0
 v.field_zc = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/SetLoadRequest.
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
// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsSetLoadRequest :: proc(v: ^Ros1Xarm_msgsSetLoadRequest, w: ^Writer) -> bool {
 if !put_float32(w,v.field_mass) { return false }
 if !put_float32(w,v.field_xc) { return false }
 if !put_float32(w,v.field_yc) { return false }
 if !put_float32(w,v.field_zc) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetLoadRequest.
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
// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsSetLoadRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetLoadRequest,bool) {
 v:=init_Ros1Xarm_msgsSetLoadRequest()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_mass=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_xc=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_yc=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_zc=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetLoadRequest value.
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
// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsSetLoadRequest :: proc(v: ^Ros1Xarm_msgsSetLoadRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros1Xarm_msgsSetLoadRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros1Xarm_msgsSetLoadRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetLoadRequest value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsSetLoadRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetLoadRequest,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros1Xarm_msgsSetLoadRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetLoadRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetLoadRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetLoadResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
// and is identified by UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetLoadResponse :: struct {
 // @brief xarm_msgs/SetLoadResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/odin/API.md
 field_ret: i16,
 // @brief xarm_msgs/SetLoadResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/SetLoadResponse in bytes.
// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetLoadResponse_Maximum_Wire_Bytes :: 134
// @brief Canonical codec identity of xarm_msgs/SetLoadResponse.
// @details Exact identity UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetLoadResponse_Codec_Identity :: "UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3"
// @brief Original ROS type name for xarm_msgs/SetLoadResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetLoadResponse_Native_Type :: "xarm_msgs/SetLoadResponse"
// @brief Selected original native identity for xarm_msgs/SetLoadResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetLoadResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetLoadResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsSetLoadResponse :: proc() -> Ros1Xarm_msgsSetLoadResponse {
 v: Ros1Xarm_msgsSetLoadResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/SetLoadResponse.
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
// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsSetLoadResponse :: proc(v: ^Ros1Xarm_msgsSetLoadResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetLoadResponse.
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
// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsSetLoadResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetLoadResponse,bool) {
 v:=init_Ros1Xarm_msgsSetLoadResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetLoadResponse value.
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
// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsSetLoadResponse :: proc(v: ^Ros1Xarm_msgsSetLoadResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=134}
 if !write_Ros1Xarm_msgsSetLoadResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=134}
 if !write_Ros1Xarm_msgsSetLoadResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetLoadResponse value.
// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsSetLoadResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetLoadResponse,u32) {
 if len(bytes)<6 || len(bytes)>134 { return Ros1Xarm_msgsSetLoadResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetLoadResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetLoadResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetToolModbusRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262 bytes
// and is identified by UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetToolModbusRequest :: struct {
 // @brief xarm_msgs/SetToolModbusRequest.send_data: uint8; 0..256 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
 field_send_data: []u8,
 // @brief xarm_msgs/SetToolModbusRequest.respond_len: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
 field_respond_len: i16,
}
// @brief Maximum canonical extent of xarm_msgs/SetToolModbusRequest in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetToolModbusRequest_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/SetToolModbusRequest.
// @details Exact identity UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetToolModbusRequest_Codec_Identity :: "UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a"
// @brief Original ROS type name for xarm_msgs/SetToolModbusRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetToolModbusRequest_Native_Type :: "xarm_msgs/SetToolModbusRequest"
// @brief Selected original native identity for xarm_msgs/SetToolModbusRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetToolModbusRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetToolModbusRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsSetToolModbusRequest :: proc() -> Ros1Xarm_msgsSetToolModbusRequest {
 v: Ros1Xarm_msgsSetToolModbusRequest
 v.field_send_data = nil
 v.field_respond_len = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/SetToolModbusRequest.
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
// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsSetToolModbusRequest :: proc(v: ^Ros1Xarm_msgsSetToolModbusRequest, w: ^Writer) -> bool {
 if len(v.field_send_data)>256 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_send_data)),4) { return false }
 for e in v.field_send_data {
 if !put_integer(w,u64(e),1) { return false }
 }
 if !put_integer(w,u64(v.field_respond_len),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetToolModbusRequest.
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
// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsSetToolModbusRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetToolModbusRequest,bool) {
 v:=init_Ros1Xarm_msgsSetToolModbusRequest()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>256 { r.code=22; return v,false }
 v.field_send_data=make([]u8,int(n),allocator)
 }
 for &e in v.field_send_data {
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 e=u8(b)
 }
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_respond_len=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetToolModbusRequest value.
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
// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsSetToolModbusRequest :: proc(v: ^Ros1Xarm_msgsSetToolModbusRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsSetToolModbusRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsSetToolModbusRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetToolModbusRequest value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsSetToolModbusRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetToolModbusRequest,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsSetToolModbusRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetToolModbusRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetToolModbusRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetToolModbusResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262 bytes
// and is identified by UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetToolModbusResponse :: struct {
 // @brief xarm_msgs/SetToolModbusResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
 field_ret: i16,
 // @brief xarm_msgs/SetToolModbusResponse.respond_data: uint8; 0..256 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
 field_respond_data: []u8,
}
// @brief Maximum canonical extent of xarm_msgs/SetToolModbusResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetToolModbusResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/SetToolModbusResponse.
// @details Exact identity UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetToolModbusResponse_Codec_Identity :: "UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15"
// @brief Original ROS type name for xarm_msgs/SetToolModbusResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetToolModbusResponse_Native_Type :: "xarm_msgs/SetToolModbusResponse"
// @brief Selected original native identity for xarm_msgs/SetToolModbusResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsSetToolModbusResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetToolModbusResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsSetToolModbusResponse :: proc() -> Ros1Xarm_msgsSetToolModbusResponse {
 v: Ros1Xarm_msgsSetToolModbusResponse
 v.field_ret = 0
 v.field_respond_data = nil
 return v
}
// @brief Append every canonical field of xarm_msgs/SetToolModbusResponse.
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
// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsSetToolModbusResponse :: proc(v: ^Ros1Xarm_msgsSetToolModbusResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if len(v.field_respond_data)>256 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_respond_data)),4) { return false }
 for e in v.field_respond_data {
 if !put_integer(w,u64(e),1) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetToolModbusResponse.
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
// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsSetToolModbusResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetToolModbusResponse,bool) {
 v:=init_Ros1Xarm_msgsSetToolModbusResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>256 { r.code=22; return v,false }
 v.field_respond_data=make([]u8,int(n),allocator)
 }
 for &e in v.field_respond_data {
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 e=u8(b)
 }
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetToolModbusResponse value.
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
// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsSetToolModbusResponse :: proc(v: ^Ros1Xarm_msgsSetToolModbusResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsSetToolModbusResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsSetToolModbusResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetToolModbusResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsSetToolModbusResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetToolModbusResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsSetToolModbusResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetToolModbusResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetToolModbusResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/TCPOffsetRequest value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
// and is identified by UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsTCPOffsetRequest :: struct {
 // @brief xarm_msgs/TCPOffsetRequest.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
 field_x: f32,
 // @brief xarm_msgs/TCPOffsetRequest.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
 field_y: f32,
 // @brief xarm_msgs/TCPOffsetRequest.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
 field_z: f32,
 // @brief xarm_msgs/TCPOffsetRequest.roll: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
 field_roll: f32,
 // @brief xarm_msgs/TCPOffsetRequest.pitch: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
 field_pitch: f32,
 // @brief xarm_msgs/TCPOffsetRequest.yaw: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
 field_yaw: f32,
}
// @brief Maximum canonical extent of xarm_msgs/TCPOffsetRequest in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsTCPOffsetRequest_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of xarm_msgs/TCPOffsetRequest.
// @details Exact identity UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsTCPOffsetRequest_Codec_Identity :: "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd"
// @brief Original ROS type name for xarm_msgs/TCPOffsetRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsTCPOffsetRequest_Native_Type :: "xarm_msgs/TCPOffsetRequest"
// @brief Selected original native identity for xarm_msgs/TCPOffsetRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsTCPOffsetRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/TCPOffsetRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsTCPOffsetRequest :: proc() -> Ros1Xarm_msgsTCPOffsetRequest {
 v: Ros1Xarm_msgsTCPOffsetRequest
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_roll = 0
 v.field_pitch = 0
 v.field_yaw = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/TCPOffsetRequest.
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
// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsTCPOffsetRequest :: proc(v: ^Ros1Xarm_msgsTCPOffsetRequest, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_roll) { return false }
 if !put_float32(w,v.field_pitch) { return false }
 if !put_float32(w,v.field_yaw) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/TCPOffsetRequest.
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
// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsTCPOffsetRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsTCPOffsetRequest,bool) {
 v:=init_Ros1Xarm_msgsTCPOffsetRequest()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_roll=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_pitch=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_yaw=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/TCPOffsetRequest value.
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
// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsTCPOffsetRequest :: proc(v: ^Ros1Xarm_msgsTCPOffsetRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros1Xarm_msgsTCPOffsetRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros1Xarm_msgsTCPOffsetRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/TCPOffsetRequest value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsTCPOffsetRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsTCPOffsetRequest,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros1Xarm_msgsTCPOffsetRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsTCPOffsetRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsTCPOffsetRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/TCPOffsetResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..134 bytes
// and is identified by UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsTCPOffsetResponse :: struct {
 // @brief xarm_msgs/TCPOffsetResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/odin/API.md
 field_ret: i16,
 // @brief xarm_msgs/TCPOffsetResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/TCPOffsetResponse in bytes.
// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsTCPOffsetResponse_Maximum_Wire_Bytes :: 134
// @brief Canonical codec identity of xarm_msgs/TCPOffsetResponse.
// @details Exact identity UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsTCPOffsetResponse_Codec_Identity :: "UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773"
// @brief Original ROS type name for xarm_msgs/TCPOffsetResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsTCPOffsetResponse_Native_Type :: "xarm_msgs/TCPOffsetResponse"
// @brief Selected original native identity for xarm_msgs/TCPOffsetResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/odin/API.md
Ros1Xarm_msgsTCPOffsetResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/TCPOffsetResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/odin/API.md
init_Ros1Xarm_msgsTCPOffsetResponse :: proc() -> Ros1Xarm_msgsTCPOffsetResponse {
 v: Ros1Xarm_msgsTCPOffsetResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/TCPOffsetResponse.
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
// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/odin/API.md
write_Ros1Xarm_msgsTCPOffsetResponse :: proc(v: ^Ros1Xarm_msgsTCPOffsetResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/TCPOffsetResponse.
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
// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/odin/API.md
read_Ros1Xarm_msgsTCPOffsetResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsTCPOffsetResponse,bool) {
 v:=init_Ros1Xarm_msgsTCPOffsetResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/TCPOffsetResponse value.
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
// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/odin/API.md
encode_Ros1Xarm_msgsTCPOffsetResponse :: proc(v: ^Ros1Xarm_msgsTCPOffsetResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=134}
 if !write_Ros1Xarm_msgsTCPOffsetResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=134}
 if !write_Ros1Xarm_msgsTCPOffsetResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/TCPOffsetResponse value.
// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/odin/API.md
decode_Ros1Xarm_msgsTCPOffsetResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsTCPOffsetResponse,u32) {
 if len(bytes)<6 || len(bytes)>134 { return Ros1Xarm_msgsTCPOffsetResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsTCPOffsetResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsTCPOffsetResponse{},reader.code }
 return value,0
}
