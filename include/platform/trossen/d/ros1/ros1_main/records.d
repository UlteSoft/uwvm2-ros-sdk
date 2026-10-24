// Generated complete bounded values; BetterC, caller buffers, no authority.
module roswasm.records;
import roswasm.wire;
@nogc nothrow:
/// @brief Complete ROS 1 interbotix_slate_msgs/SetStringRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..132 bytes
/// and is identified by UWVMROS1_bc58f043e73f33d5b3923bca8a1d515f62f405f3365b83adb17311a728d2f105.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_slate_msgsSetStringRequest {
 /// @brief Maximum canonical extent of interbotix_slate_msgs/SetStringRequest in bytes.
 /// @details The inclusive bound is 132 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_slate_msgsSetStringRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=132;
 /// @brief Canonical codec identity of interbotix_slate_msgs/SetStringRequest.
 /// @details Exact identity UWVMROS1_bc58f043e73f33d5b3923bca8a1d515f62f405f3365b83adb17311a728d2f105 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_slate_msgsSetStringRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_bc58f043e73f33d5b3923bca8a1d515f62f405f3365b83adb17311a728d2f105";
 /// @brief Original ROS type name for interbotix_slate_msgs/SetStringRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_slate_msgsSetStringRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_slate_msgs/SetStringRequest";
 /// @brief Selected original native identity for interbotix_slate_msgs/SetStringRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_slate_msgsSetStringRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_slate_msgs/SetStringRequest.data: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_slate_msgsSetStringRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_data=null;
 /// @brief Append every canonical field of interbotix_slate_msgs/SetStringRequest.
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
 /// @see Ros1Interbotix_slate_msgsSetStringRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_data,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_slate_msgs/SetStringRequest.
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
 /// @see Ros1Interbotix_slate_msgsSetStringRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_slate_msgsSetStringRequest value) {
  value=Ros1Interbotix_slate_msgsSetStringRequest.init;
  if(!r.text(value.field_data,128)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_slate_msgs/SetStringRequest value.
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
 /// @see Ros1Interbotix_slate_msgsSetStringRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_slate_msgs/SetStringRequest value.
 /// @details Require the complete 4..132-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_slate_msgsSetStringRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_slate_msgsSetStringRequest value) {
  if(bytes.length<4 || bytes.length>132) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 interbotix_slate_msgs/SetStringResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..133 bytes
/// and is identified by UWVMROS1_6f3a05dbee380f0a0f5b24b75833a99857293e656d705e4322b4b3f97a5e530c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_slate_msgsSetStringResponse {
 /// @brief Maximum canonical extent of interbotix_slate_msgs/SetStringResponse in bytes.
 /// @details The inclusive bound is 133 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_slate_msgsSetStringResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=133;
 /// @brief Canonical codec identity of interbotix_slate_msgs/SetStringResponse.
 /// @details Exact identity UWVMROS1_6f3a05dbee380f0a0f5b24b75833a99857293e656d705e4322b4b3f97a5e530c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_slate_msgsSetStringResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_6f3a05dbee380f0a0f5b24b75833a99857293e656d705e4322b4b3f97a5e530c";
 /// @brief Original ROS type name for interbotix_slate_msgs/SetStringResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_slate_msgsSetStringResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_slate_msgs/SetStringResponse";
 /// @brief Selected original native identity for interbotix_slate_msgs/SetStringResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_slate_msgsSetStringResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_slate_msgs/SetStringResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_slate_msgsSetStringResponse; document/platform/trossen/en_US/language/d/API.md
 bool field_success=false;
 /// @brief interbotix_slate_msgs/SetStringResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_slate_msgsSetStringResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of interbotix_slate_msgs/SetStringResponse.
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
 /// @see Ros1Interbotix_slate_msgsSetStringResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_slate_msgs/SetStringResponse.
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
 /// @see Ros1Interbotix_slate_msgsSetStringResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_slate_msgsSetStringResponse value) {
  value=Ros1Interbotix_slate_msgsSetStringResponse.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_slate_msgs/SetStringResponse value.
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
 /// @see Ros1Interbotix_slate_msgsSetStringResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_slate_msgs/SetStringResponse value.
 /// @details Require the complete 5..133-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_slate_msgsSetStringResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_slate_msgsSetStringResponse value) {
  if(bytes.length<5 || bytes.length>133) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsArmJoy {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/ArmJoy in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=12;
 /// @brief Canonical codec identity of interbotix_xs_msgs/ArmJoy.
 /// @details Exact identity UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3";
 /// @brief Original ROS type name for interbotix_xs_msgs/ArmJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/ArmJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/ArmJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/ArmJoy.EE_X_INC: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_X_INC=1;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_X_DEC: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_X_DEC=2;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_Y_INC: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Y_INC=3;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_Y_DEC: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Y_DEC=4;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_Z_INC: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Z_INC=5;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_Z_DEC: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Z_DEC=6;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_ROLL_CCW: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_ROLL_CCW=7;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_ROLL_CW: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_ROLL_CW=8;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_PITCH_UP: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_PITCH_UP=9;
 /// @brief interbotix_xs_msgs/ArmJoy.EE_PITCH_DOWN: original int8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_PITCH_DOWN=10;
 /// @brief interbotix_xs_msgs/ArmJoy.WAIST_CCW: original int8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WAIST_CCW=11;
 /// @brief interbotix_xs_msgs/ArmJoy.WAIST_CW: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WAIST_CW=12;
 /// @brief interbotix_xs_msgs/ArmJoy.GRIPPER_OPEN: original int8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_OPEN=13;
 /// @brief interbotix_xs_msgs/ArmJoy.GRIPPER_CLOSE: original int8 constant.
 /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_CLOSE=14;
 /// @brief interbotix_xs_msgs/ArmJoy.HOME_POSE: original int8 constant.
 /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_HOME_POSE=15;
 /// @brief interbotix_xs_msgs/ArmJoy.SLEEP_POSE: original int8 constant.
 /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SLEEP_POSE=16;
 /// @brief interbotix_xs_msgs/ArmJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_INC=17;
 /// @brief interbotix_xs_msgs/ArmJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_DEC=18;
 /// @brief interbotix_xs_msgs/ArmJoy.SPEED_COURSE: original int8 constant.
 /// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_COURSE=19;
 /// @brief interbotix_xs_msgs/ArmJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_FINE=20;
 /// @brief interbotix_xs_msgs/ArmJoy.GRIPPER_PWM_INC: original int8 constant.
 /// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_PWM_INC=21;
 /// @brief interbotix_xs_msgs/ArmJoy.GRIPPER_PWM_DEC: original int8 constant.
 /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_PWM_DEC=22;
 /// @brief interbotix_xs_msgs/ArmJoy.TORQUE_ON: original int8 constant.
 /// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_TORQUE_ON=23;
 /// @brief interbotix_xs_msgs/ArmJoy.TORQUE_OFF: original int8 constant.
 /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_TORQUE_OFF=24;
 /// @brief interbotix_xs_msgs/ArmJoy.ee_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_x_cmd=0;
 /// @brief interbotix_xs_msgs/ArmJoy.ee_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_y_cmd=0;
 /// @brief interbotix_xs_msgs/ArmJoy.ee_z_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_z_cmd=0;
 /// @brief interbotix_xs_msgs/ArmJoy.ee_roll_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_roll_cmd=0;
 /// @brief interbotix_xs_msgs/ArmJoy.ee_pitch_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_pitch_cmd=0;
 /// @brief interbotix_xs_msgs/ArmJoy.waist_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_waist_cmd=0;
 /// @brief interbotix_xs_msgs/ArmJoy.gripper_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_gripper_cmd=0;
 /// @brief interbotix_xs_msgs/ArmJoy.pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_pose_cmd=0;
 /// @brief interbotix_xs_msgs/ArmJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_cmd=0;
 /// @brief interbotix_xs_msgs/ArmJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_toggle_cmd=0;
 /// @brief interbotix_xs_msgs/ArmJoy.gripper_pwm_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_gripper_pwm_cmd=0;
 /// @brief interbotix_xs_msgs/ArmJoy.torque_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_torque_cmd=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/ArmJoy.
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
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ee_x_cmd)) return false;
  if(!w.integer(this.field_ee_y_cmd)) return false;
  if(!w.integer(this.field_ee_z_cmd)) return false;
  if(!w.integer(this.field_ee_roll_cmd)) return false;
  if(!w.integer(this.field_ee_pitch_cmd)) return false;
  if(!w.integer(this.field_waist_cmd)) return false;
  if(!w.integer(this.field_gripper_cmd)) return false;
  if(!w.integer(this.field_pose_cmd)) return false;
  if(!w.integer(this.field_speed_cmd)) return false;
  if(!w.integer(this.field_speed_toggle_cmd)) return false;
  if(!w.integer(this.field_gripper_pwm_cmd)) return false;
  if(!w.integer(this.field_torque_cmd)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/ArmJoy.
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
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsArmJoy value) {
  value=Ros1Interbotix_xs_msgsArmJoy.init;
  if(!r.integer(value.field_ee_x_cmd)) return false;
  if(!r.integer(value.field_ee_y_cmd)) return false;
  if(!r.integer(value.field_ee_z_cmd)) return false;
  if(!r.integer(value.field_ee_roll_cmd)) return false;
  if(!r.integer(value.field_ee_pitch_cmd)) return false;
  if(!r.integer(value.field_waist_cmd)) return false;
  if(!r.integer(value.field_gripper_cmd)) return false;
  if(!r.integer(value.field_pose_cmd)) return false;
  if(!r.integer(value.field_speed_cmd)) return false;
  if(!r.integer(value.field_speed_toggle_cmd)) return false;
  if(!r.integer(value.field_gripper_pwm_cmd)) return false;
  if(!r.integer(value.field_torque_cmd)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/ArmJoy value.
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
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/ArmJoy value.
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
 /// @see Ros1Interbotix_xs_msgsArmJoy; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsArmJoy value) {
  if(bytes.length<12 || bytes.length>12) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsHexJoy {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/HexJoy in bytes.
 /// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=17;
 /// @brief Canonical codec identity of interbotix_xs_msgs/HexJoy.
 /// @details Exact identity UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37";
 /// @brief Original ROS type name for interbotix_xs_msgs/HexJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/HexJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/HexJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/HexJoy.WORLD_X_INC: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WORLD_X_INC=1;
 /// @brief interbotix_xs_msgs/HexJoy.WORLD_X_DEC: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WORLD_X_DEC=2;
 /// @brief interbotix_xs_msgs/HexJoy.WORLD_Y_INC: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WORLD_Y_INC=3;
 /// @brief interbotix_xs_msgs/HexJoy.WORLD_Y_DEC: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WORLD_Y_DEC=4;
 /// @brief interbotix_xs_msgs/HexJoy.WORLD_YAW_CCW: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WORLD_YAW_CCW=5;
 /// @brief interbotix_xs_msgs/HexJoy.WORLD_YAW_CW: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WORLD_YAW_CW=6;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_X_INC: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_X_INC=7;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_X_DEC: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_X_DEC=8;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_Y_INC: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_Y_INC=9;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_Y_DEC: original int8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_Y_DEC=10;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_Z_INC: original int8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_Z_INC=11;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_Z_DEC: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_Z_DEC=12;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_ROLL_CCW: original int8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_ROLL_CCW=13;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_ROLL_CW: original int8 constant.
 /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_ROLL_CW=14;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_PITCH_UP: original int8 constant.
 /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_PITCH_UP=15;
 /// @brief interbotix_xs_msgs/HexJoy.PLACE_PITCH_DOWN: original int8 constant.
 /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_PITCH_DOWN=16;
 /// @brief interbotix_xs_msgs/HexJoy.MOVE_HEXAPOD: original int8 constant.
 /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_MOVE_HEXAPOD=17;
 /// @brief interbotix_xs_msgs/HexJoy.MOVE_LEG: original int8 constant.
 /// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_MOVE_LEG=18;
 /// @brief interbotix_xs_msgs/HexJoy.HOME_POSE: original int8 constant.
 /// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_HOME_POSE=19;
 /// @brief interbotix_xs_msgs/HexJoy.SLEEP_POSE: original int8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SLEEP_POSE=20;
 /// @brief interbotix_xs_msgs/HexJoy.GAIT_NEXT: original int8 constant.
 /// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GAIT_NEXT=21;
 /// @brief interbotix_xs_msgs/HexJoy.GAIT_PREVIOUS: original int8 constant.
 /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GAIT_PREVIOUS=22;
 /// @brief interbotix_xs_msgs/HexJoy.LEG_NEXT: original int8 constant.
 /// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_LEG_NEXT=23;
 /// @brief interbotix_xs_msgs/HexJoy.LEG_PREVIOUS: original int8 constant.
 /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_LEG_PREVIOUS=24;
 /// @brief interbotix_xs_msgs/HexJoy.WIDEN_STANCE: original int8 constant.
 /// @details Exact admitted value 25. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WIDEN_STANCE=25;
 /// @brief interbotix_xs_msgs/HexJoy.NARROW_STANCE: original int8 constant.
 /// @details Exact admitted value 26. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_NARROW_STANCE=26;
 /// @brief interbotix_xs_msgs/HexJoy.REBOOT_MOTORS: original int8 constant.
 /// @details Exact admitted value 27. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_REBOOT_MOTORS=27;
 /// @brief interbotix_xs_msgs/HexJoy.SET_HOME_POSE: original int8 constant.
 /// @details Exact admitted value 28. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SET_HOME_POSE=28;
 /// @brief interbotix_xs_msgs/HexJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 29. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_INC=29;
 /// @brief interbotix_xs_msgs/HexJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 30. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_DEC=30;
 /// @brief interbotix_xs_msgs/HexJoy.SPEED_COURSE: original int8 constant.
 /// @details Exact admitted value 31. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_COURSE=31;
 /// @brief interbotix_xs_msgs/HexJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 32. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_FINE=32;
 /// @brief interbotix_xs_msgs/HexJoy.world_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_world_x_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.world_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_world_y_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.world_yaw_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_world_yaw_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.place_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_place_x_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.place_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_place_y_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.place_z_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_place_z_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.place_roll_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_place_roll_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.place_pitch_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_place_pitch_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_pose_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.move_type_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_move_type_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.gait_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_gait_toggle_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.leg_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_leg_toggle_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.stance_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_stance_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.reboot_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_reboot_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.set_home_pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_set_home_pose_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_cmd=0;
 /// @brief interbotix_xs_msgs/HexJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_toggle_cmd=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/HexJoy.
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
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_world_x_cmd)) return false;
  if(!w.integer(this.field_world_y_cmd)) return false;
  if(!w.integer(this.field_world_yaw_cmd)) return false;
  if(!w.integer(this.field_place_x_cmd)) return false;
  if(!w.integer(this.field_place_y_cmd)) return false;
  if(!w.integer(this.field_place_z_cmd)) return false;
  if(!w.integer(this.field_place_roll_cmd)) return false;
  if(!w.integer(this.field_place_pitch_cmd)) return false;
  if(!w.integer(this.field_pose_cmd)) return false;
  if(!w.integer(this.field_move_type_cmd)) return false;
  if(!w.integer(this.field_gait_toggle_cmd)) return false;
  if(!w.integer(this.field_leg_toggle_cmd)) return false;
  if(!w.integer(this.field_stance_cmd)) return false;
  if(!w.integer(this.field_reboot_cmd)) return false;
  if(!w.integer(this.field_set_home_pose_cmd)) return false;
  if(!w.integer(this.field_speed_cmd)) return false;
  if(!w.integer(this.field_speed_toggle_cmd)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/HexJoy.
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
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsHexJoy value) {
  value=Ros1Interbotix_xs_msgsHexJoy.init;
  if(!r.integer(value.field_world_x_cmd)) return false;
  if(!r.integer(value.field_world_y_cmd)) return false;
  if(!r.integer(value.field_world_yaw_cmd)) return false;
  if(!r.integer(value.field_place_x_cmd)) return false;
  if(!r.integer(value.field_place_y_cmd)) return false;
  if(!r.integer(value.field_place_z_cmd)) return false;
  if(!r.integer(value.field_place_roll_cmd)) return false;
  if(!r.integer(value.field_place_pitch_cmd)) return false;
  if(!r.integer(value.field_pose_cmd)) return false;
  if(!r.integer(value.field_move_type_cmd)) return false;
  if(!r.integer(value.field_gait_toggle_cmd)) return false;
  if(!r.integer(value.field_leg_toggle_cmd)) return false;
  if(!r.integer(value.field_stance_cmd)) return false;
  if(!r.integer(value.field_reboot_cmd)) return false;
  if(!r.integer(value.field_set_home_pose_cmd)) return false;
  if(!r.integer(value.field_speed_cmd)) return false;
  if(!r.integer(value.field_speed_toggle_cmd)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/HexJoy value.
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
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/HexJoy value.
 /// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsHexJoy; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsHexJoy value) {
  if(bytes.length<17 || bytes.length>17) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsJointGroupCommand {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/JointGroupCommand in bytes.
 /// @details The inclusive bound is 392 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=392;
 /// @brief Canonical codec identity of interbotix_xs_msgs/JointGroupCommand.
 /// @details Exact identity UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec";
 /// @brief Original ROS type name for interbotix_xs_msgs/JointGroupCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/JointGroupCommand";
 /// @brief Selected original native identity for interbotix_xs_msgs/JointGroupCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/JointGroupCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/JointGroupCommand.cmd: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 float[] field_cmd=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/JointGroupCommand.
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
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_name,128)) return false;
  if(this.field_cmd.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_cmd.length)) return false;
  foreach(ref e; this.field_cmd) {
  if(!w.float32(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/JointGroupCommand.
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
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsJointGroupCommand value) {
  value=Ros1Interbotix_xs_msgsJointGroupCommand.init;
  if(!r.text(value.field_name,128)) return false;
  uint count1; if(!r.integer(count1)) return false;
  if(count1>64) {
       r.code=22;
       return false;
  }
  value.field_cmd=arena.allocate!(float)(count1);
  if(value.field_cmd.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_cmd) {
  if(!r.float32(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/JointGroupCommand value.
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
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/JointGroupCommand value.
 /// @details Require the complete 8..392-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsJointGroupCommand value) {
  if(bytes.length<8 || bytes.length>392) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsJointSingleCommand {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/JointSingleCommand in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=136;
 /// @brief Canonical codec identity of interbotix_xs_msgs/JointSingleCommand.
 /// @details Exact identity UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0";
 /// @brief Original ROS type name for interbotix_xs_msgs/JointSingleCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/JointSingleCommand";
 /// @brief Selected original native identity for interbotix_xs_msgs/JointSingleCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/JointSingleCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/JointSingleCommand.cmd: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 float field_cmd=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/JointSingleCommand.
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
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_name,128)) return false;
  if(!w.float32(this.field_cmd)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/JointSingleCommand.
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
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsJointSingleCommand value) {
  value=Ros1Interbotix_xs_msgsJointSingleCommand.init;
  if(!r.text(value.field_name,128)) return false;
  if(!r.float32(value.field_cmd)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/JointSingleCommand value.
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
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/JointSingleCommand value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsJointSingleCommand value) {
  if(bytes.length<8 || bytes.length>136) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsJointTemps {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/JointTemps in bytes.
 /// @details The inclusive bound is 8712 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=8712;
 /// @brief Canonical codec identity of interbotix_xs_msgs/JointTemps.
 /// @details Exact identity UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511";
 /// @brief Original ROS type name for interbotix_xs_msgs/JointTemps.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/JointTemps";
 /// @brief Selected original native identity for interbotix_xs_msgs/JointTemps.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/JointTemps.names: string; 0..64 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[][] field_names=null;
 /// @brief interbotix_xs_msgs/JointTemps.temps: int32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/d/API.md
 int[] field_temps=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/JointTemps.
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
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_names.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_names.length)) return false;
  foreach(ref e; this.field_names) {
  if(!w.text(e,128)) return false;
  }
  if(this.field_temps.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_temps.length)) return false;
  foreach(ref e; this.field_temps) {
  if(!w.integer(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/JointTemps.
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
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsJointTemps value) {
  value=Ros1Interbotix_xs_msgsJointTemps.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>64) {
       r.code=22;
       return false;
  }
  value.field_names=arena.allocate!(const(ubyte)[])(count0);
  if(value.field_names.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_names) {
  if(!r.text(e,128)) return false;
  }
  uint count1; if(!r.integer(count1)) return false;
  if(count1>64) {
       r.code=22;
       return false;
  }
  value.field_temps=arena.allocate!(int)(count1);
  if(value.field_temps.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_temps) {
  if(!r.integer(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/JointTemps value.
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
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/JointTemps value.
 /// @details Require the complete 8..8712-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsJointTemps; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsJointTemps value) {
  if(bytes.length<8 || bytes.length>8712) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Time {
 /// @brief Maximum canonical extent of time in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Time; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of time.
 /// @details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Time; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
 /// @brief Original ROS type name for time.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Time; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="time";
 /// @brief Selected original native identity for time.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Time; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief time.sec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Time; document/platform/trossen/en_US/language/d/API.md
 uint field_sec=0;
 /// @brief time.nsec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Time; document/platform/trossen/en_US/language/d/API.md
 uint field_nsec=0;
 /// @brief Append every canonical field of time.
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
 /// @see Ros1Time; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_nsec >= 1000000000) {
       w.code=22;
       return false;
  }
  if(!w.integer(this.field_sec)) return false;
  if(!w.integer(this.field_nsec)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of time.
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
 /// @see Ros1Time; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Time value) {
  value=Ros1Time.init;
  if(!r.integer(value.field_sec)) return false;
  if(!r.integer(value.field_nsec)) return false;
  if(value.field_nsec >= 1000000000) {
       r.code=22;
       return false;
  }
  return true;
 }
 /// @brief Encode one complete time value.
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
 /// @see Ros1Time; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete time value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Time; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Time value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Std_msgsHeader {
 /// @brief Maximum canonical extent of std_msgs/Header in bytes.
 /// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=144;
 /// @brief Canonical codec identity of std_msgs/Header.
 /// @details Exact identity UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
 /// @brief Original ROS type name for std_msgs/Header.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="std_msgs/Header";
 /// @brief Selected original native identity for std_msgs/Header.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief std_msgs/Header.seq: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/d/API.md
 uint field_seq=0;
 /// @brief std_msgs/Header.stamp: time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/d/API.md
 Ros1Time field_stamp=Ros1Time.init;
 /// @brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_frame_id=null;
 /// @brief Append every canonical field of std_msgs/Header.
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
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_seq)) return false;
  if(!this.field_stamp.writeFields(w)) return false;
  if(!w.text(this.field_frame_id,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of std_msgs/Header.
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
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Std_msgsHeader value) {
  value=Ros1Std_msgsHeader.init;
  if(!r.integer(value.field_seq)) return false;
  if(!Ros1Time.readFields(r,arena,value.field_stamp)) return false;
  if(!r.text(value.field_frame_id,128)) return false;
  return true;
 }
 /// @brief Encode one complete std_msgs/Header value.
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
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_msgs/Header value.
 /// @details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Std_msgsHeader; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Std_msgsHeader value) {
  if(bytes.length<16 || bytes.length>144) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Duration {
 /// @brief Maximum canonical extent of duration in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Duration; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of duration.
 /// @details Exact identity UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Duration; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8";
 /// @brief Original ROS type name for duration.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Duration; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="duration";
 /// @brief Selected original native identity for duration.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Duration; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief duration.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Duration; document/platform/trossen/en_US/language/d/API.md
 int field_sec=0;
 /// @brief duration.nsec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Duration; document/platform/trossen/en_US/language/d/API.md
 int field_nsec=0;
 /// @brief Append every canonical field of duration.
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
 /// @see Ros1Duration; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_nsec < 0) {
       w.code=22;
       return false;
  }
  if(this.field_nsec >= 1000000000) {
       w.code=22;
       return false;
  }
  if(!w.integer(this.field_sec)) return false;
  if(!w.integer(this.field_nsec)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of duration.
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
 /// @see Ros1Duration; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Duration value) {
  value=Ros1Duration.init;
  if(!r.integer(value.field_sec)) return false;
  if(!r.integer(value.field_nsec)) return false;
  if(value.field_nsec < 0) {
       r.code=22;
       return false;
  }
  if(value.field_nsec >= 1000000000) {
       r.code=22;
       return false;
  }
  return true;
 }
 /// @brief Encode one complete duration value.
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
 /// @see Ros1Duration; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete duration value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Duration; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Duration value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Trajectory_msgsJointTrajectoryPoint {
 /// @brief Maximum canonical extent of trajectory_msgs/JointTrajectoryPoint in bytes.
 /// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=536;
 /// @brief Canonical codec identity of trajectory_msgs/JointTrajectoryPoint.
 /// @details Exact identity UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81";
 /// @brief Original ROS type name for trajectory_msgs/JointTrajectoryPoint.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="trajectory_msgs/JointTrajectoryPoint";
 /// @brief Selected original native identity for trajectory_msgs/JointTrajectoryPoint.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief trajectory_msgs/JointTrajectoryPoint.positions: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 double[] field_positions=null;
 /// @brief trajectory_msgs/JointTrajectoryPoint.velocities: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 double[] field_velocities=null;
 /// @brief trajectory_msgs/JointTrajectoryPoint.accelerations: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 double[] field_accelerations=null;
 /// @brief trajectory_msgs/JointTrajectoryPoint.effort: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 double[] field_effort=null;
 /// @brief trajectory_msgs/JointTrajectoryPoint.time_from_start: duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 Ros1Duration field_time_from_start=Ros1Duration.init;
 /// @brief Append every canonical field of trajectory_msgs/JointTrajectoryPoint.
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
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_positions.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_positions.length)) return false;
  foreach(ref e; this.field_positions) {
  if(!w.float64(e)) return false;
  }
  if(this.field_velocities.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_velocities.length)) return false;
  foreach(ref e; this.field_velocities) {
  if(!w.float64(e)) return false;
  }
  if(this.field_accelerations.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_accelerations.length)) return false;
  foreach(ref e; this.field_accelerations) {
  if(!w.float64(e)) return false;
  }
  if(this.field_effort.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_effort.length)) return false;
  foreach(ref e; this.field_effort) {
  if(!w.float64(e)) return false;
  }
  if(!this.field_time_from_start.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of trajectory_msgs/JointTrajectoryPoint.
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
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Trajectory_msgsJointTrajectoryPoint value) {
  value=Ros1Trajectory_msgsJointTrajectoryPoint.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>16) {
       r.code=22;
       return false;
  }
  value.field_positions=arena.allocate!(double)(count0);
  if(value.field_positions.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_positions) {
  if(!r.float64(e)) return false;
  }
  uint count1; if(!r.integer(count1)) return false;
  if(count1>16) {
       r.code=22;
       return false;
  }
  value.field_velocities=arena.allocate!(double)(count1);
  if(value.field_velocities.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_velocities) {
  if(!r.float64(e)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>16) {
       r.code=22;
       return false;
  }
  value.field_accelerations=arena.allocate!(double)(count2);
  if(value.field_accelerations.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_accelerations) {
  if(!r.float64(e)) return false;
  }
  uint count3; if(!r.integer(count3)) return false;
  if(count3>16) {
       r.code=22;
       return false;
  }
  value.field_effort=arena.allocate!(double)(count3);
  if(value.field_effort.length!=count3) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_effort) {
  if(!r.float64(e)) return false;
  }
  if(!Ros1Duration.readFields(r,arena,value.field_time_from_start)) return false;
  return true;
 }
 /// @brief Encode one complete trajectory_msgs/JointTrajectoryPoint value.
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
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete trajectory_msgs/JointTrajectoryPoint value.
 /// @details Require the complete 24..536-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Trajectory_msgsJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Trajectory_msgsJointTrajectoryPoint value) {
  if(bytes.length<24 || bytes.length>536) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Trajectory_msgsJointTrajectory {
 /// @brief Maximum canonical extent of trajectory_msgs/JointTrajectory in bytes.
 /// @details The inclusive bound is 4408 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=4408;
 /// @brief Canonical codec identity of trajectory_msgs/JointTrajectory.
 /// @details Exact identity UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9";
 /// @brief Original ROS type name for trajectory_msgs/JointTrajectory.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="trajectory_msgs/JointTrajectory";
 /// @brief Selected original native identity for trajectory_msgs/JointTrajectory.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief trajectory_msgs/JointTrajectory.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 Ros1Std_msgsHeader field_header=Ros1Std_msgsHeader.init;
 /// @brief trajectory_msgs/JointTrajectory.joint_names: string; 0..16 elements; each string is 0..128 bytes;
 /// strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[][] field_joint_names=null;
 /// @brief trajectory_msgs/JointTrajectory.points: trajectory_msgs/JointTrajectoryPoint; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 Ros1Trajectory_msgsJointTrajectoryPoint[] field_points=null;
 /// @brief Append every canonical field of trajectory_msgs/JointTrajectory.
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
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(this.field_joint_names.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_names.length)) return false;
  foreach(ref e; this.field_joint_names) {
  if(!w.text(e,128)) return false;
  }
  if(this.field_points.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_points.length)) return false;
  foreach(ref e; this.field_points) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of trajectory_msgs/JointTrajectory.
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
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Trajectory_msgsJointTrajectory value) {
  value=Ros1Trajectory_msgsJointTrajectory.init;
  if(!Ros1Std_msgsHeader.readFields(r,arena,value.field_header)) return false;
  uint count1; if(!r.integer(count1)) return false;
  if(count1>16) {
       r.code=22;
       return false;
  }
  value.field_joint_names=arena.allocate!(const(ubyte)[])(count1);
  if(value.field_joint_names.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_names) {
  if(!r.text(e,128)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>4) {
       r.code=22;
       return false;
  }
  value.field_points=arena.allocate!(Ros1Trajectory_msgsJointTrajectoryPoint)(count2);
  if(value.field_points.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_points) {
  if(!Ros1Trajectory_msgsJointTrajectoryPoint.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete trajectory_msgs/JointTrajectory value.
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
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete trajectory_msgs/JointTrajectory value.
 /// @details Require the complete 24..4408-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Trajectory_msgsJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Trajectory_msgsJointTrajectory value) {
  if(bytes.length<24 || bytes.length>4408) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsJointTrajectoryCommand {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/JointTrajectoryCommand in bytes.
 /// @details The inclusive bound is 4672 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=4672;
 /// @brief Canonical codec identity of interbotix_xs_msgs/JointTrajectoryCommand.
 /// @details Exact identity UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7";
 /// @brief Original ROS type name for interbotix_xs_msgs/JointTrajectoryCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/JointTrajectoryCommand";
 /// @brief Selected original native identity for interbotix_xs_msgs/JointTrajectoryCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/JointTrajectoryCommand.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_cmd_type=null;
 /// @brief interbotix_xs_msgs/JointTrajectoryCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/JointTrajectoryCommand.traj: trajectory_msgs/JointTrajectory.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 Ros1Trajectory_msgsJointTrajectory field_traj=Ros1Trajectory_msgsJointTrajectory.init;
 /// @brief Append every canonical field of interbotix_xs_msgs/JointTrajectoryCommand.
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
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_cmd_type,128)) return false;
  if(!w.text(this.field_name,128)) return false;
  if(!this.field_traj.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/JointTrajectoryCommand.
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
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsJointTrajectoryCommand value) {
  value=Ros1Interbotix_xs_msgsJointTrajectoryCommand.init;
  if(!r.text(value.field_cmd_type,128)) return false;
  if(!r.text(value.field_name,128)) return false;
  if(!Ros1Trajectory_msgsJointTrajectory.readFields(r,arena,value.field_traj)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/JointTrajectoryCommand value.
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
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/JointTrajectoryCommand value.
 /// @details Require the complete 32..4672-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsJointTrajectoryCommand value) {
  if(bytes.length<32 || bytes.length>4672) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsLocobotJoy {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/LocobotJoy in bytes.
 /// @details The inclusive bound is 30 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=30;
 /// @brief Canonical codec identity of interbotix_xs_msgs/LocobotJoy.
 /// @details Exact identity UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613";
 /// @brief Original ROS type name for interbotix_xs_msgs/LocobotJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/LocobotJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/LocobotJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/LocobotJoy.RESET_ODOM: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_RESET_ODOM=1;
 /// @brief interbotix_xs_msgs/LocobotJoy.PAN_CCW: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PAN_CCW=2;
 /// @brief interbotix_xs_msgs/LocobotJoy.PAN_CW: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PAN_CW=3;
 /// @brief interbotix_xs_msgs/LocobotJoy.TILT_UP: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_TILT_UP=4;
 /// @brief interbotix_xs_msgs/LocobotJoy.TILT_DOWN: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_TILT_DOWN=5;
 /// @brief interbotix_xs_msgs/LocobotJoy.PAN_TILT_HOME: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PAN_TILT_HOME=6;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_X_INC: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_X_INC=7;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_X_DEC: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_X_DEC=8;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_Y_INC: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Y_INC=9;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_Y_DEC: original int8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Y_DEC=10;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_Z_INC: original int8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Z_INC=11;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_Z_DEC: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Z_DEC=12;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_ROLL_CCW: original int8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_ROLL_CCW=13;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_ROLL_CW: original int8 constant.
 /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_ROLL_CW=14;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_PITCH_UP: original int8 constant.
 /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_PITCH_UP=15;
 /// @brief interbotix_xs_msgs/LocobotJoy.EE_PITCH_DOWN: original int8 constant.
 /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_PITCH_DOWN=16;
 /// @brief interbotix_xs_msgs/LocobotJoy.WAIST_CCW: original int8 constant.
 /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WAIST_CCW=17;
 /// @brief interbotix_xs_msgs/LocobotJoy.WAIST_CW: original int8 constant.
 /// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WAIST_CW=18;
 /// @brief interbotix_xs_msgs/LocobotJoy.GRIPPER_OPEN: original int8 constant.
 /// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_OPEN=19;
 /// @brief interbotix_xs_msgs/LocobotJoy.GRIPPER_CLOSE: original int8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_CLOSE=20;
 /// @brief interbotix_xs_msgs/LocobotJoy.HOME_POSE: original int8 constant.
 /// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_HOME_POSE=21;
 /// @brief interbotix_xs_msgs/LocobotJoy.SLEEP_POSE: original int8 constant.
 /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SLEEP_POSE=22;
 /// @brief interbotix_xs_msgs/LocobotJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_INC=23;
 /// @brief interbotix_xs_msgs/LocobotJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_DEC=24;
 /// @brief interbotix_xs_msgs/LocobotJoy.SPEED_COURSE: original int8 constant.
 /// @details Exact admitted value 25. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_COURSE=25;
 /// @brief interbotix_xs_msgs/LocobotJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 26. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_FINE=26;
 /// @brief interbotix_xs_msgs/LocobotJoy.GRIPPER_PWM_INC: original int8 constant.
 /// @details Exact admitted value 27. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_PWM_INC=27;
 /// @brief interbotix_xs_msgs/LocobotJoy.GRIPPER_PWM_DEC: original int8 constant.
 /// @details Exact admitted value 28. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_PWM_DEC=28;
 /// @brief interbotix_xs_msgs/LocobotJoy.base_x_cmd: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 double field_base_x_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.base_theta_cmd: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 double field_base_theta_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.base_reset_odom_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_base_reset_odom_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.pan_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_pan_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.tilt_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_tilt_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.ee_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_x_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.ee_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_y_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.ee_z_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_z_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.ee_roll_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_roll_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.ee_pitch_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_pitch_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.waist_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_waist_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.gripper_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_gripper_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_pose_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_toggle_cmd=0;
 /// @brief interbotix_xs_msgs/LocobotJoy.gripper_pwm_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_gripper_pwm_cmd=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/LocobotJoy.
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
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_base_x_cmd)) return false;
  if(!w.float64(this.field_base_theta_cmd)) return false;
  if(!w.integer(this.field_base_reset_odom_cmd)) return false;
  if(!w.integer(this.field_pan_cmd)) return false;
  if(!w.integer(this.field_tilt_cmd)) return false;
  if(!w.integer(this.field_ee_x_cmd)) return false;
  if(!w.integer(this.field_ee_y_cmd)) return false;
  if(!w.integer(this.field_ee_z_cmd)) return false;
  if(!w.integer(this.field_ee_roll_cmd)) return false;
  if(!w.integer(this.field_ee_pitch_cmd)) return false;
  if(!w.integer(this.field_waist_cmd)) return false;
  if(!w.integer(this.field_gripper_cmd)) return false;
  if(!w.integer(this.field_pose_cmd)) return false;
  if(!w.integer(this.field_speed_cmd)) return false;
  if(!w.integer(this.field_speed_toggle_cmd)) return false;
  if(!w.integer(this.field_gripper_pwm_cmd)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/LocobotJoy.
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
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsLocobotJoy value) {
  value=Ros1Interbotix_xs_msgsLocobotJoy.init;
  if(!r.float64(value.field_base_x_cmd)) return false;
  if(!r.float64(value.field_base_theta_cmd)) return false;
  if(!r.integer(value.field_base_reset_odom_cmd)) return false;
  if(!r.integer(value.field_pan_cmd)) return false;
  if(!r.integer(value.field_tilt_cmd)) return false;
  if(!r.integer(value.field_ee_x_cmd)) return false;
  if(!r.integer(value.field_ee_y_cmd)) return false;
  if(!r.integer(value.field_ee_z_cmd)) return false;
  if(!r.integer(value.field_ee_roll_cmd)) return false;
  if(!r.integer(value.field_ee_pitch_cmd)) return false;
  if(!r.integer(value.field_waist_cmd)) return false;
  if(!r.integer(value.field_gripper_cmd)) return false;
  if(!r.integer(value.field_pose_cmd)) return false;
  if(!r.integer(value.field_speed_cmd)) return false;
  if(!r.integer(value.field_speed_toggle_cmd)) return false;
  if(!r.integer(value.field_gripper_pwm_cmd)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/LocobotJoy value.
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
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/LocobotJoy value.
 /// @details Require the complete 30..30-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsLocobotJoy value) {
  if(bytes.length<30 || bytes.length>30) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsMotorGainsRequest {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/MotorGainsRequest in bytes.
 /// @details The inclusive bound is 292 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=292;
 /// @brief Canonical codec identity of interbotix_xs_msgs/MotorGainsRequest.
 /// @details Exact identity UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009";
 /// @brief Original ROS type name for interbotix_xs_msgs/MotorGainsRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/MotorGainsRequest";
 /// @brief Selected original native identity for interbotix_xs_msgs/MotorGainsRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/MotorGainsRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_cmd_type=null;
 /// @brief interbotix_xs_msgs/MotorGainsRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/MotorGainsRequest.kp_pos: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 int field_kp_pos=0;
 /// @brief interbotix_xs_msgs/MotorGainsRequest.ki_pos: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 int field_ki_pos=0;
 /// @brief interbotix_xs_msgs/MotorGainsRequest.kd_pos: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 int field_kd_pos=0;
 /// @brief interbotix_xs_msgs/MotorGainsRequest.k1: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 int field_k1=0;
 /// @brief interbotix_xs_msgs/MotorGainsRequest.k2: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 int field_k2=0;
 /// @brief interbotix_xs_msgs/MotorGainsRequest.kp_vel: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 int field_kp_vel=0;
 /// @brief interbotix_xs_msgs/MotorGainsRequest.ki_vel: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 int field_ki_vel=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/MotorGainsRequest.
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_cmd_type,128)) return false;
  if(!w.text(this.field_name,128)) return false;
  if(!w.integer(this.field_kp_pos)) return false;
  if(!w.integer(this.field_ki_pos)) return false;
  if(!w.integer(this.field_kd_pos)) return false;
  if(!w.integer(this.field_k1)) return false;
  if(!w.integer(this.field_k2)) return false;
  if(!w.integer(this.field_kp_vel)) return false;
  if(!w.integer(this.field_ki_vel)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/MotorGainsRequest.
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsMotorGainsRequest value) {
  value=Ros1Interbotix_xs_msgsMotorGainsRequest.init;
  if(!r.text(value.field_cmd_type,128)) return false;
  if(!r.text(value.field_name,128)) return false;
  if(!r.integer(value.field_kp_pos)) return false;
  if(!r.integer(value.field_ki_pos)) return false;
  if(!r.integer(value.field_kd_pos)) return false;
  if(!r.integer(value.field_k1)) return false;
  if(!r.integer(value.field_k2)) return false;
  if(!r.integer(value.field_kp_vel)) return false;
  if(!r.integer(value.field_ki_vel)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/MotorGainsRequest value.
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/MotorGainsRequest value.
 /// @details Require the complete 36..292-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsMotorGainsRequest value) {
  if(bytes.length<36 || bytes.length>292) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsMotorGainsResponse {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/MotorGainsResponse in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/MotorGainsResponse.
 /// @details Exact identity UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89";
 /// @brief Original ROS type name for interbotix_xs_msgs/MotorGainsResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/MotorGainsResponse";
 /// @brief Selected original native identity for interbotix_xs_msgs/MotorGainsResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of interbotix_xs_msgs/MotorGainsResponse.
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/MotorGainsResponse.
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsMotorGainsResponse value) {
  value=Ros1Interbotix_xs_msgsMotorGainsResponse.init;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/MotorGainsResponse value.
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/MotorGainsResponse value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsMotorGainsResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsMotorGainsResponse value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsOperatingModesRequest {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/OperatingModesRequest in bytes.
 /// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=536;
 /// @brief Canonical codec identity of interbotix_xs_msgs/OperatingModesRequest.
 /// @details Exact identity UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3";
 /// @brief Original ROS type name for interbotix_xs_msgs/OperatingModesRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/OperatingModesRequest";
 /// @brief Selected original native identity for interbotix_xs_msgs/OperatingModesRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/OperatingModesRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_cmd_type=null;
 /// @brief interbotix_xs_msgs/OperatingModesRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/OperatingModesRequest.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_mode=null;
 /// @brief interbotix_xs_msgs/OperatingModesRequest.profile_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_profile_type=null;
 /// @brief interbotix_xs_msgs/OperatingModesRequest.profile_velocity: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/d/API.md
 int field_profile_velocity=0;
 /// @brief interbotix_xs_msgs/OperatingModesRequest.profile_acceleration: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/d/API.md
 int field_profile_acceleration=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/OperatingModesRequest.
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_cmd_type,128)) return false;
  if(!w.text(this.field_name,128)) return false;
  if(!w.text(this.field_mode,128)) return false;
  if(!w.text(this.field_profile_type,128)) return false;
  if(!w.integer(this.field_profile_velocity)) return false;
  if(!w.integer(this.field_profile_acceleration)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/OperatingModesRequest.
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsOperatingModesRequest value) {
  value=Ros1Interbotix_xs_msgsOperatingModesRequest.init;
  if(!r.text(value.field_cmd_type,128)) return false;
  if(!r.text(value.field_name,128)) return false;
  if(!r.text(value.field_mode,128)) return false;
  if(!r.text(value.field_profile_type,128)) return false;
  if(!r.integer(value.field_profile_velocity)) return false;
  if(!r.integer(value.field_profile_acceleration)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/OperatingModesRequest value.
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/OperatingModesRequest value.
 /// @details Require the complete 24..536-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsOperatingModesRequest value) {
  if(bytes.length<24 || bytes.length>536) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsOperatingModesResponse {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/OperatingModesResponse in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/OperatingModesResponse.
 /// @details Exact identity UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e";
 /// @brief Original ROS type name for interbotix_xs_msgs/OperatingModesResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/OperatingModesResponse";
 /// @brief Selected original native identity for interbotix_xs_msgs/OperatingModesResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of interbotix_xs_msgs/OperatingModesResponse.
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/OperatingModesResponse.
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsOperatingModesResponse value) {
  value=Ros1Interbotix_xs_msgsOperatingModesResponse.init;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/OperatingModesResponse value.
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/OperatingModesResponse value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsOperatingModesResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsOperatingModesResponse value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsRebootRequest {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/RebootRequest in bytes.
 /// @details The inclusive bound is 266 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=266;
 /// @brief Canonical codec identity of interbotix_xs_msgs/RebootRequest.
 /// @details Exact identity UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a";
 /// @brief Original ROS type name for interbotix_xs_msgs/RebootRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/RebootRequest";
 /// @brief Selected original native identity for interbotix_xs_msgs/RebootRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/RebootRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_cmd_type=null;
 /// @brief interbotix_xs_msgs/RebootRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/RebootRequest.enable: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/d/API.md
 bool field_enable=false;
 /// @brief interbotix_xs_msgs/RebootRequest.smart_reboot: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/d/API.md
 bool field_smart_reboot=false;
 /// @brief Append every canonical field of interbotix_xs_msgs/RebootRequest.
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
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_cmd_type,128)) return false;
  if(!w.text(this.field_name,128)) return false;
  if(!w.boolean(this.field_enable)) return false;
  if(!w.boolean(this.field_smart_reboot)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/RebootRequest.
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
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsRebootRequest value) {
  value=Ros1Interbotix_xs_msgsRebootRequest.init;
  if(!r.text(value.field_cmd_type,128)) return false;
  if(!r.text(value.field_name,128)) return false;
  if(!r.boolean(value.field_enable)) return false;
  if(!r.boolean(value.field_smart_reboot)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/RebootRequest value.
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
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/RebootRequest value.
 /// @details Require the complete 10..266-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsRebootRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsRebootRequest value) {
  if(bytes.length<10 || bytes.length>266) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsRebootResponse {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/RebootResponse in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/RebootResponse.
 /// @details Exact identity UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4";
 /// @brief Original ROS type name for interbotix_xs_msgs/RebootResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/RebootResponse";
 /// @brief Selected original native identity for interbotix_xs_msgs/RebootResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of interbotix_xs_msgs/RebootResponse.
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
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/RebootResponse.
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
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsRebootResponse value) {
  value=Ros1Interbotix_xs_msgsRebootResponse.init;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/RebootResponse value.
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
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/RebootResponse value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsRebootResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsRebootResponse value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsRegisterValuesRequest {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/RegisterValuesRequest in bytes.
 /// @details The inclusive bound is 400 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=400;
 /// @brief Canonical codec identity of interbotix_xs_msgs/RegisterValuesRequest.
 /// @details Exact identity UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a";
 /// @brief Original ROS type name for interbotix_xs_msgs/RegisterValuesRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/RegisterValuesRequest";
 /// @brief Selected original native identity for interbotix_xs_msgs/RegisterValuesRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/RegisterValuesRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_cmd_type=null;
 /// @brief interbotix_xs_msgs/RegisterValuesRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/RegisterValuesRequest.reg: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_reg=null;
 /// @brief interbotix_xs_msgs/RegisterValuesRequest.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/d/API.md
 int field_value=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/RegisterValuesRequest.
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_cmd_type,128)) return false;
  if(!w.text(this.field_name,128)) return false;
  if(!w.text(this.field_reg,128)) return false;
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/RegisterValuesRequest.
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsRegisterValuesRequest value) {
  value=Ros1Interbotix_xs_msgsRegisterValuesRequest.init;
  if(!r.text(value.field_cmd_type,128)) return false;
  if(!r.text(value.field_name,128)) return false;
  if(!r.text(value.field_reg,128)) return false;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/RegisterValuesRequest value.
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/RegisterValuesRequest value.
 /// @details Require the complete 16..400-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsRegisterValuesRequest value) {
  if(bytes.length<16 || bytes.length>400) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsRegisterValuesResponse {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/RegisterValuesResponse in bytes.
 /// @details The inclusive bound is 68 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=68;
 /// @brief Canonical codec identity of interbotix_xs_msgs/RegisterValuesResponse.
 /// @details Exact identity UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659";
 /// @brief Original ROS type name for interbotix_xs_msgs/RegisterValuesResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/RegisterValuesResponse";
 /// @brief Selected original native identity for interbotix_xs_msgs/RegisterValuesResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/RegisterValuesResponse.values: int32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/d/API.md
 int[] field_values=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/RegisterValuesResponse.
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_values.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_values.length)) return false;
  foreach(ref e; this.field_values) {
  if(!w.integer(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/RegisterValuesResponse.
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsRegisterValuesResponse value) {
  value=Ros1Interbotix_xs_msgsRegisterValuesResponse.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>16) {
       r.code=22;
       return false;
  }
  value.field_values=arena.allocate!(int)(count0);
  if(value.field_values.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_values) {
  if(!r.integer(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/RegisterValuesResponse value.
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/RegisterValuesResponse value.
 /// @details Require the complete 4..68-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsRegisterValuesResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsRegisterValuesResponse value) {
  if(bytes.length<4 || bytes.length>68) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsRobotInfoRequest {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/RobotInfoRequest in bytes.
 /// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=264;
 /// @brief Canonical codec identity of interbotix_xs_msgs/RobotInfoRequest.
 /// @details Exact identity UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176";
 /// @brief Original ROS type name for interbotix_xs_msgs/RobotInfoRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/RobotInfoRequest";
 /// @brief Selected original native identity for interbotix_xs_msgs/RobotInfoRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/RobotInfoRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_cmd_type=null;
 /// @brief interbotix_xs_msgs/RobotInfoRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/RobotInfoRequest.
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_cmd_type,128)) return false;
  if(!w.text(this.field_name,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/RobotInfoRequest.
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsRobotInfoRequest value) {
  value=Ros1Interbotix_xs_msgsRobotInfoRequest.init;
  if(!r.text(value.field_cmd_type,128)) return false;
  if(!r.text(value.field_name,128)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/RobotInfoRequest value.
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/RobotInfoRequest value.
 /// @details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsRobotInfoRequest value) {
  if(bytes.length<8 || bytes.length>264) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsRobotInfoResponse {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/RobotInfoResponse in bytes.
 /// @details The inclusive bound is 18474 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=18474;
 /// @brief Canonical codec identity of interbotix_xs_msgs/RobotInfoResponse.
 /// @details Exact identity UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d";
 /// @brief Original ROS type name for interbotix_xs_msgs/RobotInfoResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/RobotInfoResponse";
 /// @brief Selected original native identity for interbotix_xs_msgs/RobotInfoResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/RobotInfoResponse.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_mode=null;
 /// @brief interbotix_xs_msgs/RobotInfoResponse.profile_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_profile_type=null;
 /// @brief interbotix_xs_msgs/RobotInfoResponse.joint_names: string; 0..64 elements; each string is 0..128 bytes;
 /// strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[][] field_joint_names=null;
 /// @brief interbotix_xs_msgs/RobotInfoResponse.joint_ids: int16; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 short[] field_joint_ids=null;
 /// @brief interbotix_xs_msgs/RobotInfoResponse.joint_lower_limits: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 float[] field_joint_lower_limits=null;
 /// @brief interbotix_xs_msgs/RobotInfoResponse.joint_upper_limits: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 float[] field_joint_upper_limits=null;
 /// @brief interbotix_xs_msgs/RobotInfoResponse.joint_velocity_limits: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 float[] field_joint_velocity_limits=null;
 /// @brief interbotix_xs_msgs/RobotInfoResponse.joint_sleep_positions: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 float[] field_joint_sleep_positions=null;
 /// @brief interbotix_xs_msgs/RobotInfoResponse.joint_state_indices: int16; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 short[] field_joint_state_indices=null;
 /// @brief interbotix_xs_msgs/RobotInfoResponse.num_joints: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 short field_num_joints=0;
 /// @brief interbotix_xs_msgs/RobotInfoResponse.name: string; 0..64 elements; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[][] field_name=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/RobotInfoResponse.
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_mode,128)) return false;
  if(!w.text(this.field_profile_type,128)) return false;
  if(this.field_joint_names.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_names.length)) return false;
  foreach(ref e; this.field_joint_names) {
  if(!w.text(e,128)) return false;
  }
  if(this.field_joint_ids.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_ids.length)) return false;
  foreach(ref e; this.field_joint_ids) {
  if(!w.integer(e)) return false;
  }
  if(this.field_joint_lower_limits.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_lower_limits.length)) return false;
  foreach(ref e; this.field_joint_lower_limits) {
  if(!w.float32(e)) return false;
  }
  if(this.field_joint_upper_limits.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_upper_limits.length)) return false;
  foreach(ref e; this.field_joint_upper_limits) {
  if(!w.float32(e)) return false;
  }
  if(this.field_joint_velocity_limits.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_velocity_limits.length)) return false;
  foreach(ref e; this.field_joint_velocity_limits) {
  if(!w.float32(e)) return false;
  }
  if(this.field_joint_sleep_positions.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_sleep_positions.length)) return false;
  foreach(ref e; this.field_joint_sleep_positions) {
  if(!w.float32(e)) return false;
  }
  if(this.field_joint_state_indices.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_state_indices.length)) return false;
  foreach(ref e; this.field_joint_state_indices) {
  if(!w.integer(e)) return false;
  }
  if(!w.integer(this.field_num_joints)) return false;
  if(this.field_name.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_name.length)) return false;
  foreach(ref e; this.field_name) {
  if(!w.text(e,128)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/RobotInfoResponse.
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsRobotInfoResponse value) {
  value=Ros1Interbotix_xs_msgsRobotInfoResponse.init;
  if(!r.text(value.field_mode,128)) return false;
  if(!r.text(value.field_profile_type,128)) return false;
  uint count2; if(!r.integer(count2)) return false;
  if(count2>64) {
       r.code=22;
       return false;
  }
  value.field_joint_names=arena.allocate!(const(ubyte)[])(count2);
  if(value.field_joint_names.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_names) {
  if(!r.text(e,128)) return false;
  }
  uint count3; if(!r.integer(count3)) return false;
  if(count3>64) {
       r.code=22;
       return false;
  }
  value.field_joint_ids=arena.allocate!(short)(count3);
  if(value.field_joint_ids.length!=count3) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_ids) {
  if(!r.integer(e)) return false;
  }
  uint count4; if(!r.integer(count4)) return false;
  if(count4>64) {
       r.code=22;
       return false;
  }
  value.field_joint_lower_limits=arena.allocate!(float)(count4);
  if(value.field_joint_lower_limits.length!=count4) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_lower_limits) {
  if(!r.float32(e)) return false;
  }
  uint count5; if(!r.integer(count5)) return false;
  if(count5>64) {
       r.code=22;
       return false;
  }
  value.field_joint_upper_limits=arena.allocate!(float)(count5);
  if(value.field_joint_upper_limits.length!=count5) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_upper_limits) {
  if(!r.float32(e)) return false;
  }
  uint count6; if(!r.integer(count6)) return false;
  if(count6>64) {
       r.code=22;
       return false;
  }
  value.field_joint_velocity_limits=arena.allocate!(float)(count6);
  if(value.field_joint_velocity_limits.length!=count6) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_velocity_limits) {
  if(!r.float32(e)) return false;
  }
  uint count7; if(!r.integer(count7)) return false;
  if(count7>64) {
       r.code=22;
       return false;
  }
  value.field_joint_sleep_positions=arena.allocate!(float)(count7);
  if(value.field_joint_sleep_positions.length!=count7) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_sleep_positions) {
  if(!r.float32(e)) return false;
  }
  uint count8; if(!r.integer(count8)) return false;
  if(count8>64) {
       r.code=22;
       return false;
  }
  value.field_joint_state_indices=arena.allocate!(short)(count8);
  if(value.field_joint_state_indices.length!=count8) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_state_indices) {
  if(!r.integer(e)) return false;
  }
  if(!r.integer(value.field_num_joints)) return false;
  uint count10; if(!r.integer(count10)) return false;
  if(count10>64) {
       r.code=22;
       return false;
  }
  value.field_name=arena.allocate!(const(ubyte)[])(count10);
  if(value.field_name.length!=count10) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_name) {
  if(!r.text(e,128)) return false;
  }
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/RobotInfoResponse value.
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/RobotInfoResponse value.
 /// @details Require the complete 42..18474-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsRobotInfoResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsRobotInfoResponse value) {
  if(bytes.length<42 || bytes.length>18474) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsTorqueEnableRequest {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/TorqueEnableRequest in bytes.
 /// @details The inclusive bound is 265 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=265;
 /// @brief Canonical codec identity of interbotix_xs_msgs/TorqueEnableRequest.
 /// @details Exact identity UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a";
 /// @brief Original ROS type name for interbotix_xs_msgs/TorqueEnableRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/TorqueEnableRequest";
 /// @brief Selected original native identity for interbotix_xs_msgs/TorqueEnableRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/TorqueEnableRequest.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_cmd_type=null;
 /// @brief interbotix_xs_msgs/TorqueEnableRequest.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/TorqueEnableRequest.enable: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/d/API.md
 bool field_enable=false;
 /// @brief Append every canonical field of interbotix_xs_msgs/TorqueEnableRequest.
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_cmd_type,128)) return false;
  if(!w.text(this.field_name,128)) return false;
  if(!w.boolean(this.field_enable)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/TorqueEnableRequest.
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsTorqueEnableRequest value) {
  value=Ros1Interbotix_xs_msgsTorqueEnableRequest.init;
  if(!r.text(value.field_cmd_type,128)) return false;
  if(!r.text(value.field_name,128)) return false;
  if(!r.boolean(value.field_enable)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/TorqueEnableRequest value.
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/TorqueEnableRequest value.
 /// @details Require the complete 9..265-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsTorqueEnableRequest value) {
  if(bytes.length<9 || bytes.length>265) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsTorqueEnableResponse {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/TorqueEnableResponse in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/TorqueEnableResponse.
 /// @details Exact identity UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44";
 /// @brief Original ROS type name for interbotix_xs_msgs/TorqueEnableResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/TorqueEnableResponse";
 /// @brief Selected original native identity for interbotix_xs_msgs/TorqueEnableResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of interbotix_xs_msgs/TorqueEnableResponse.
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/TorqueEnableResponse.
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsTorqueEnableResponse value) {
  value=Ros1Interbotix_xs_msgsTorqueEnableResponse.init;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/TorqueEnableResponse value.
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/TorqueEnableResponse value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsTorqueEnableResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsTorqueEnableResponse value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Interbotix_xs_msgsTurretJoy {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/TurretJoy in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of interbotix_xs_msgs/TurretJoy.
 /// @details Exact identity UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70";
 /// @brief Original ROS type name for interbotix_xs_msgs/TurretJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/TurretJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/TurretJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/TurretJoy.PAN_CCW: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PAN_CCW=1;
 /// @brief interbotix_xs_msgs/TurretJoy.PAN_CW: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PAN_CW=2;
 /// @brief interbotix_xs_msgs/TurretJoy.TILT_UP: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_TILT_UP=3;
 /// @brief interbotix_xs_msgs/TurretJoy.TILT_DOWN: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_TILT_DOWN=4;
 /// @brief interbotix_xs_msgs/TurretJoy.PAN_TILT_HOME: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PAN_TILT_HOME=5;
 /// @brief interbotix_xs_msgs/TurretJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_INC=6;
 /// @brief interbotix_xs_msgs/TurretJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_DEC=7;
 /// @brief interbotix_xs_msgs/TurretJoy.SPEED_COURSE: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_COURSE=8;
 /// @brief interbotix_xs_msgs/TurretJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_FINE=9;
 /// @brief interbotix_xs_msgs/TurretJoy.pan_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_pan_cmd=0;
 /// @brief interbotix_xs_msgs/TurretJoy.tilt_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_tilt_cmd=0;
 /// @brief interbotix_xs_msgs/TurretJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_cmd=0;
 /// @brief interbotix_xs_msgs/TurretJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_toggle_cmd=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/TurretJoy.
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
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_pan_cmd)) return false;
  if(!w.integer(this.field_tilt_cmd)) return false;
  if(!w.integer(this.field_speed_cmd)) return false;
  if(!w.integer(this.field_speed_toggle_cmd)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/TurretJoy.
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
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Interbotix_xs_msgsTurretJoy value) {
  value=Ros1Interbotix_xs_msgsTurretJoy.init;
  if(!r.integer(value.field_pan_cmd)) return false;
  if(!r.integer(value.field_tilt_cmd)) return false;
  if(!r.integer(value.field_speed_cmd)) return false;
  if(!r.integer(value.field_speed_toggle_cmd)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/TurretJoy value.
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
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/TurretJoy value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Interbotix_xs_msgsTurretJoy; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Interbotix_xs_msgsTurretJoy value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsClearErrRequest {
 /// @brief Maximum canonical extent of xarm_msgs/ClearErrRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of xarm_msgs/ClearErrRequest.
 /// @details Exact identity UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";
 /// @brief Original ROS type name for xarm_msgs/ClearErrRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/ClearErrRequest";
 /// @brief Selected original native identity for xarm_msgs/ClearErrRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of xarm_msgs/ClearErrRequest.
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
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/ClearErrRequest.
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
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsClearErrRequest value) {
  value=Ros1Xarm_msgsClearErrRequest.init;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/ClearErrRequest value.
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
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/ClearErrRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsClearErrRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsClearErrRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsClearErrResponse {
 /// @brief Maximum canonical extent of xarm_msgs/ClearErrResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=134;
 /// @brief Canonical codec identity of xarm_msgs/ClearErrResponse.
 /// @details Exact identity UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1";
 /// @brief Original ROS type name for xarm_msgs/ClearErrResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/ClearErrResponse";
 /// @brief Selected original native identity for xarm_msgs/ClearErrResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/ClearErrResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/d/API.md
 short field_ret=0;
 /// @brief xarm_msgs/ClearErrResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/ClearErrResponse.
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
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/ClearErrResponse.
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
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsClearErrResponse value) {
  value=Ros1Xarm_msgsClearErrResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/ClearErrResponse value.
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
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/ClearErrResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsClearErrResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsClearErrResponse value) {
  if(bytes.length<6 || bytes.length>134) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsConfigToolModbusRequest {
 /// @brief Maximum canonical extent of xarm_msgs/ConfigToolModbusRequest in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of xarm_msgs/ConfigToolModbusRequest.
 /// @details Exact identity UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5";
 /// @brief Original ROS type name for xarm_msgs/ConfigToolModbusRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/ConfigToolModbusRequest";
 /// @brief Selected original native identity for xarm_msgs/ConfigToolModbusRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/ConfigToolModbusRequest.baud_rate: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 int field_baud_rate=0;
 /// @brief xarm_msgs/ConfigToolModbusRequest.timeout_ms: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 int field_timeout_ms=0;
 /// @brief Append every canonical field of xarm_msgs/ConfigToolModbusRequest.
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
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_baud_rate)) return false;
  if(!w.integer(this.field_timeout_ms)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/ConfigToolModbusRequest.
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
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsConfigToolModbusRequest value) {
  value=Ros1Xarm_msgsConfigToolModbusRequest.init;
  if(!r.integer(value.field_baud_rate)) return false;
  if(!r.integer(value.field_timeout_ms)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/ConfigToolModbusRequest value.
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
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/ConfigToolModbusRequest value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsConfigToolModbusRequest value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsConfigToolModbusResponse {
 /// @brief Maximum canonical extent of xarm_msgs/ConfigToolModbusResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=134;
 /// @brief Canonical codec identity of xarm_msgs/ConfigToolModbusResponse.
 /// @details Exact identity UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b";
 /// @brief Original ROS type name for xarm_msgs/ConfigToolModbusResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/ConfigToolModbusResponse";
 /// @brief Selected original native identity for xarm_msgs/ConfigToolModbusResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/ConfigToolModbusResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief xarm_msgs/ConfigToolModbusResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 short field_ret=0;
 /// @brief Append every canonical field of xarm_msgs/ConfigToolModbusResponse.
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
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_message,128)) return false;
  if(!w.integer(this.field_ret)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/ConfigToolModbusResponse.
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
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsConfigToolModbusResponse value) {
  value=Ros1Xarm_msgsConfigToolModbusResponse.init;
  if(!r.text(value.field_message,128)) return false;
  if(!r.integer(value.field_ret)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/ConfigToolModbusResponse value.
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
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/ConfigToolModbusResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsConfigToolModbusResponse value) {
  if(bytes.length<6 || bytes.length>134) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsGetAnalogIORequest {
 /// @brief Maximum canonical extent of xarm_msgs/GetAnalogIORequest in bytes.
 /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=2;
 /// @brief Canonical codec identity of xarm_msgs/GetAnalogIORequest.
 /// @details Exact identity UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";
 /// @brief Original ROS type name for xarm_msgs/GetAnalogIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/GetAnalogIORequest";
 /// @brief Selected original native identity for xarm_msgs/GetAnalogIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetAnalogIORequest.port_num: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/d/API.md
 short field_port_num=0;
 /// @brief Append every canonical field of xarm_msgs/GetAnalogIORequest.
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
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_port_num)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetAnalogIORequest.
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
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetAnalogIORequest value) {
  value=Ros1Xarm_msgsGetAnalogIORequest.init;
  if(!r.integer(value.field_port_num)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetAnalogIORequest value.
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
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetAnalogIORequest value.
 /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGetAnalogIORequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetAnalogIORequest value) {
  if(bytes.length<2 || bytes.length>2) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsGetAnalogIOResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GetAnalogIOResponse in bytes.
 /// @details The inclusive bound is 138 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=138;
 /// @brief Canonical codec identity of xarm_msgs/GetAnalogIOResponse.
 /// @details Exact identity UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968";
 /// @brief Original ROS type name for xarm_msgs/GetAnalogIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/GetAnalogIOResponse";
 /// @brief Selected original native identity for xarm_msgs/GetAnalogIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetAnalogIOResponse.analog_value: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/d/API.md
 float field_analog_value=0;
 /// @brief xarm_msgs/GetAnalogIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/d/API.md
 short field_ret=0;
 /// @brief xarm_msgs/GetAnalogIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GetAnalogIOResponse.
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
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_analog_value)) return false;
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetAnalogIOResponse.
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
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetAnalogIOResponse value) {
  value=Ros1Xarm_msgsGetAnalogIOResponse.init;
  if(!r.float32(value.field_analog_value)) return false;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetAnalogIOResponse value.
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
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetAnalogIOResponse value.
 /// @details Require the complete 10..138-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetAnalogIOResponse value) {
  if(bytes.length<10 || bytes.length>138) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsGetControllerDigitalIORequest {
 /// @brief Maximum canonical extent of xarm_msgs/GetControllerDigitalIORequest in bytes.
 /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=2;
 /// @brief Canonical codec identity of xarm_msgs/GetControllerDigitalIORequest.
 /// @details Exact identity UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c";
 /// @brief Original ROS type name for xarm_msgs/GetControllerDigitalIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/GetControllerDigitalIORequest";
 /// @brief Selected original native identity for xarm_msgs/GetControllerDigitalIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetControllerDigitalIORequest.io_num: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 short field_io_num=0;
 /// @brief Append every canonical field of xarm_msgs/GetControllerDigitalIORequest.
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_io_num)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetControllerDigitalIORequest.
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetControllerDigitalIORequest value) {
  value=Ros1Xarm_msgsGetControllerDigitalIORequest.init;
  if(!r.integer(value.field_io_num)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetControllerDigitalIORequest value.
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetControllerDigitalIORequest value.
 /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetControllerDigitalIORequest value) {
  if(bytes.length<2 || bytes.length>2) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsGetControllerDigitalIOResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GetControllerDigitalIOResponse in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=136;
 /// @brief Canonical codec identity of xarm_msgs/GetControllerDigitalIOResponse.
 /// @details Exact identity UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3";
 /// @brief Original ROS type name for xarm_msgs/GetControllerDigitalIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/GetControllerDigitalIOResponse";
 /// @brief Selected original native identity for xarm_msgs/GetControllerDigitalIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetControllerDigitalIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 short field_ret=0;
 /// @brief xarm_msgs/GetControllerDigitalIOResponse.value: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 short field_value=0;
 /// @brief xarm_msgs/GetControllerDigitalIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GetControllerDigitalIOResponse.
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.integer(this.field_value)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetControllerDigitalIOResponse.
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetControllerDigitalIOResponse value) {
  value=Ros1Xarm_msgsGetControllerDigitalIOResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.integer(value.field_value)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetControllerDigitalIOResponse value.
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetControllerDigitalIOResponse value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetControllerDigitalIOResponse value) {
  if(bytes.length<8 || bytes.length>136) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsGetDigitalIORequest {
 /// @brief Maximum canonical extent of xarm_msgs/GetDigitalIORequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of xarm_msgs/GetDigitalIORequest.
 /// @details Exact identity UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";
 /// @brief Original ROS type name for xarm_msgs/GetDigitalIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/GetDigitalIORequest";
 /// @brief Selected original native identity for xarm_msgs/GetDigitalIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of xarm_msgs/GetDigitalIORequest.
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
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetDigitalIORequest.
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
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetDigitalIORequest value) {
  value=Ros1Xarm_msgsGetDigitalIORequest.init;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetDigitalIORequest value.
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
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetDigitalIORequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetDigitalIORequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsGetDigitalIOResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GetDigitalIOResponse in bytes.
 /// @details The inclusive bound is 142 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=142;
 /// @brief Canonical codec identity of xarm_msgs/GetDigitalIOResponse.
 /// @details Exact identity UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2";
 /// @brief Original ROS type name for xarm_msgs/GetDigitalIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/GetDigitalIOResponse";
 /// @brief Selected original native identity for xarm_msgs/GetDigitalIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetDigitalIOResponse.digital_1: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 int field_digital_1=0;
 /// @brief xarm_msgs/GetDigitalIOResponse.digital_2: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 int field_digital_2=0;
 /// @brief xarm_msgs/GetDigitalIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 short field_ret=0;
 /// @brief xarm_msgs/GetDigitalIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GetDigitalIOResponse.
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
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_digital_1)) return false;
  if(!w.integer(this.field_digital_2)) return false;
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetDigitalIOResponse.
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
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetDigitalIOResponse value) {
  value=Ros1Xarm_msgsGetDigitalIOResponse.init;
  if(!r.integer(value.field_digital_1)) return false;
  if(!r.integer(value.field_digital_2)) return false;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetDigitalIOResponse value.
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
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetDigitalIOResponse value.
 /// @details Require the complete 14..142-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetDigitalIOResponse value) {
  if(bytes.length<14 || bytes.length>142) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsGetErrRequest {
 /// @brief Maximum canonical extent of xarm_msgs/GetErrRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of xarm_msgs/GetErrRequest.
 /// @details Exact identity UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531";
 /// @brief Original ROS type name for xarm_msgs/GetErrRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/GetErrRequest";
 /// @brief Selected original native identity for xarm_msgs/GetErrRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of xarm_msgs/GetErrRequest.
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
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetErrRequest.
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
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetErrRequest value) {
  value=Ros1Xarm_msgsGetErrRequest.init;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetErrRequest value.
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
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetErrRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGetErrRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetErrRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsGetErrResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GetErrResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=134;
 /// @brief Canonical codec identity of xarm_msgs/GetErrResponse.
 /// @details Exact identity UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037";
 /// @brief Original ROS type name for xarm_msgs/GetErrResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/GetErrResponse";
 /// @brief Selected original native identity for xarm_msgs/GetErrResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetErrResponse.err: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/d/API.md
 short field_err=0;
 /// @brief xarm_msgs/GetErrResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GetErrResponse.
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
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_err)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetErrResponse.
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
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetErrResponse value) {
  value=Ros1Xarm_msgsGetErrResponse.init;
  if(!r.integer(value.field_err)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetErrResponse value.
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
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetErrResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGetErrResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetErrResponse value) {
  if(bytes.length<6 || bytes.length>134) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsGripperConfigRequest {
 /// @brief Maximum canonical extent of xarm_msgs/GripperConfigRequest in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of xarm_msgs/GripperConfigRequest.
 /// @details Exact identity UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4";
 /// @brief Original ROS type name for xarm_msgs/GripperConfigRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/GripperConfigRequest";
 /// @brief Selected original native identity for xarm_msgs/GripperConfigRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GripperConfigRequest.pulse_vel: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/d/API.md
 float field_pulse_vel=0;
 /// @brief Append every canonical field of xarm_msgs/GripperConfigRequest.
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
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_pulse_vel)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperConfigRequest.
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
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGripperConfigRequest value) {
  value=Ros1Xarm_msgsGripperConfigRequest.init;
  if(!r.float32(value.field_pulse_vel)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GripperConfigRequest value.
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
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GripperConfigRequest value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGripperConfigRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGripperConfigRequest value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsGripperConfigResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GripperConfigResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=134;
 /// @brief Canonical codec identity of xarm_msgs/GripperConfigResponse.
 /// @details Exact identity UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5";
 /// @brief Original ROS type name for xarm_msgs/GripperConfigResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/GripperConfigResponse";
 /// @brief Selected original native identity for xarm_msgs/GripperConfigResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GripperConfigResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/d/API.md
 short field_ret=0;
 /// @brief xarm_msgs/GripperConfigResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GripperConfigResponse.
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
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperConfigResponse.
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
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGripperConfigResponse value) {
  value=Ros1Xarm_msgsGripperConfigResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GripperConfigResponse value.
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
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GripperConfigResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGripperConfigResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGripperConfigResponse value) {
  if(bytes.length<6 || bytes.length>134) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsGripperMoveRequest {
 /// @brief Maximum canonical extent of xarm_msgs/GripperMoveRequest in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of xarm_msgs/GripperMoveRequest.
 /// @details Exact identity UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2";
 /// @brief Original ROS type name for xarm_msgs/GripperMoveRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/GripperMoveRequest";
 /// @brief Selected original native identity for xarm_msgs/GripperMoveRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GripperMoveRequest.pulse_pos: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/d/API.md
 float field_pulse_pos=0;
 /// @brief Append every canonical field of xarm_msgs/GripperMoveRequest.
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
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_pulse_pos)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperMoveRequest.
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
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGripperMoveRequest value) {
  value=Ros1Xarm_msgsGripperMoveRequest.init;
  if(!r.float32(value.field_pulse_pos)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GripperMoveRequest value.
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
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GripperMoveRequest value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGripperMoveRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGripperMoveRequest value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsGripperMoveResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GripperMoveResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=134;
 /// @brief Canonical codec identity of xarm_msgs/GripperMoveResponse.
 /// @details Exact identity UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998";
 /// @brief Original ROS type name for xarm_msgs/GripperMoveResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/GripperMoveResponse";
 /// @brief Selected original native identity for xarm_msgs/GripperMoveResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GripperMoveResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/d/API.md
 short field_ret=0;
 /// @brief xarm_msgs/GripperMoveResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GripperMoveResponse.
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
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperMoveResponse.
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
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGripperMoveResponse value) {
  value=Ros1Xarm_msgsGripperMoveResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GripperMoveResponse value.
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
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GripperMoveResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGripperMoveResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGripperMoveResponse value) {
  if(bytes.length<6 || bytes.length>134) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsGripperStateRequest {
 /// @brief Maximum canonical extent of xarm_msgs/GripperStateRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of xarm_msgs/GripperStateRequest.
 /// @details Exact identity UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d";
 /// @brief Original ROS type name for xarm_msgs/GripperStateRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/GripperStateRequest";
 /// @brief Selected original native identity for xarm_msgs/GripperStateRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of xarm_msgs/GripperStateRequest.
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
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperStateRequest.
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
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGripperStateRequest value) {
  value=Ros1Xarm_msgsGripperStateRequest.init;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GripperStateRequest value.
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
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GripperStateRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGripperStateRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGripperStateRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsGripperStateResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GripperStateResponse in bytes.
 /// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=6;
 /// @brief Canonical codec identity of xarm_msgs/GripperStateResponse.
 /// @details Exact identity UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4";
 /// @brief Original ROS type name for xarm_msgs/GripperStateResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/GripperStateResponse";
 /// @brief Selected original native identity for xarm_msgs/GripperStateResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GripperStateResponse.curr_pos: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/d/API.md
 float field_curr_pos=0;
 /// @brief xarm_msgs/GripperStateResponse.err_code: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/d/API.md
 short field_err_code=0;
 /// @brief Append every canonical field of xarm_msgs/GripperStateResponse.
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
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_curr_pos)) return false;
  if(!w.integer(this.field_err_code)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperStateResponse.
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
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGripperStateResponse value) {
  value=Ros1Xarm_msgsGripperStateResponse.init;
  if(!r.float32(value.field_curr_pos)) return false;
  if(!r.integer(value.field_err_code)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GripperStateResponse value.
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
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GripperStateResponse value.
 /// @details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsGripperStateResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGripperStateResponse value) {
  if(bytes.length<6 || bytes.length>6) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsIOState {
 /// @brief Maximum canonical extent of xarm_msgs/IOState in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of xarm_msgs/IOState.
 /// @details Exact identity UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
 /// @brief Original ROS type name for xarm_msgs/IOState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/IOState";
 /// @brief Selected original native identity for xarm_msgs/IOState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/IOState.digital_1: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/d/API.md
 int field_digital_1=0;
 /// @brief xarm_msgs/IOState.digital_2: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/d/API.md
 int field_digital_2=0;
 /// @brief xarm_msgs/IOState.analog_1: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/d/API.md
 float field_analog_1=0;
 /// @brief xarm_msgs/IOState.analog_2: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/d/API.md
 float field_analog_2=0;
 /// @brief Append every canonical field of xarm_msgs/IOState.
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
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_digital_1)) return false;
  if(!w.integer(this.field_digital_2)) return false;
  if(!w.float32(this.field_analog_1)) return false;
  if(!w.float32(this.field_analog_2)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/IOState.
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
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsIOState value) {
  value=Ros1Xarm_msgsIOState.init;
  if(!r.integer(value.field_digital_1)) return false;
  if(!r.integer(value.field_digital_2)) return false;
  if(!r.float32(value.field_analog_1)) return false;
  if(!r.float32(value.field_analog_2)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/IOState value.
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
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/IOState value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsIOState; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsIOState value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsMoveRequest {
 /// @brief Maximum canonical extent of xarm_msgs/MoveRequest in bytes.
 /// @details The inclusive bound is 84 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=84;
 /// @brief Canonical codec identity of xarm_msgs/MoveRequest.
 /// @details Exact identity UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5";
 /// @brief Original ROS type name for xarm_msgs/MoveRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/MoveRequest";
 /// @brief Selected original native identity for xarm_msgs/MoveRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/MoveRequest.pose: float32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/d/API.md
 float[] field_pose=null;
 /// @brief xarm_msgs/MoveRequest.mvvelo: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/d/API.md
 float field_mvvelo=0;
 /// @brief xarm_msgs/MoveRequest.mvacc: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/d/API.md
 float field_mvacc=0;
 /// @brief xarm_msgs/MoveRequest.mvtime: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/d/API.md
 float field_mvtime=0;
 /// @brief xarm_msgs/MoveRequest.mvradii: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/d/API.md
 float field_mvradii=0;
 /// @brief Append every canonical field of xarm_msgs/MoveRequest.
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
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_pose.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_pose.length)) return false;
  foreach(ref e; this.field_pose) {
  if(!w.float32(e)) return false;
  }
  if(!w.float32(this.field_mvvelo)) return false;
  if(!w.float32(this.field_mvacc)) return false;
  if(!w.float32(this.field_mvtime)) return false;
  if(!w.float32(this.field_mvradii)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/MoveRequest.
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
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsMoveRequest value) {
  value=Ros1Xarm_msgsMoveRequest.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>16) {
       r.code=22;
       return false;
  }
  value.field_pose=arena.allocate!(float)(count0);
  if(value.field_pose.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_pose) {
  if(!r.float32(e)) return false;
  }
  if(!r.float32(value.field_mvvelo)) return false;
  if(!r.float32(value.field_mvacc)) return false;
  if(!r.float32(value.field_mvtime)) return false;
  if(!r.float32(value.field_mvradii)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/MoveRequest value.
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
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/MoveRequest value.
 /// @details Require the complete 20..84-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsMoveRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsMoveRequest value) {
  if(bytes.length<20 || bytes.length>84) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsMoveResponse {
 /// @brief Maximum canonical extent of xarm_msgs/MoveResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=134;
 /// @brief Canonical codec identity of xarm_msgs/MoveResponse.
 /// @details Exact identity UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658";
 /// @brief Original ROS type name for xarm_msgs/MoveResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/MoveResponse";
 /// @brief Selected original native identity for xarm_msgs/MoveResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/MoveResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/d/API.md
 short field_ret=0;
 /// @brief xarm_msgs/MoveResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/MoveResponse.
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
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/MoveResponse.
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
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsMoveResponse value) {
  value=Ros1Xarm_msgsMoveResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/MoveResponse value.
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
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/MoveResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsMoveResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsMoveResponse value) {
  if(bytes.length<6 || bytes.length>134) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsRobotMsg {
 /// @brief Maximum canonical extent of xarm_msgs/RobotMsg in bytes.
 /// @details The inclusive bound is 130 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=130;
 /// @brief Canonical codec identity of xarm_msgs/RobotMsg.
 /// @details Exact identity UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41";
 /// @brief Original ROS type name for xarm_msgs/RobotMsg.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/RobotMsg";
 /// @brief Selected original native identity for xarm_msgs/RobotMsg.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/RobotMsg.state: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 short field_state=0;
 /// @brief xarm_msgs/RobotMsg.mode: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 short field_mode=0;
 /// @brief xarm_msgs/RobotMsg.cmdnum: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 short field_cmdnum=0;
 /// @brief xarm_msgs/RobotMsg.mt_brake: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 short field_mt_brake=0;
 /// @brief xarm_msgs/RobotMsg.mt_able: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 short field_mt_able=0;
 /// @brief xarm_msgs/RobotMsg.err: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 short field_err=0;
 /// @brief xarm_msgs/RobotMsg.warn: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 short field_warn=0;
 /// @brief xarm_msgs/RobotMsg.angle: float32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 float[] field_angle=null;
 /// @brief xarm_msgs/RobotMsg.pose: float32; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 float[6] field_pose=0;
 /// @brief xarm_msgs/RobotMsg.offset: float32; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 float[6] field_offset=0;
 /// @brief Append every canonical field of xarm_msgs/RobotMsg.
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
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_state)) return false;
  if(!w.integer(this.field_mode)) return false;
  if(!w.integer(this.field_cmdnum)) return false;
  if(!w.integer(this.field_mt_brake)) return false;
  if(!w.integer(this.field_mt_able)) return false;
  if(!w.integer(this.field_err)) return false;
  if(!w.integer(this.field_warn)) return false;
  if(this.field_angle.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_angle.length)) return false;
  foreach(ref e; this.field_angle) {
  if(!w.float32(e)) return false;
  }
  foreach(ref e; this.field_pose) {
  if(!w.float32(e)) return false;
  }
  foreach(ref e; this.field_offset) {
  if(!w.float32(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/RobotMsg.
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
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsRobotMsg value) {
  value=Ros1Xarm_msgsRobotMsg.init;
  if(!r.integer(value.field_state)) return false;
  if(!r.integer(value.field_mode)) return false;
  if(!r.integer(value.field_cmdnum)) return false;
  if(!r.integer(value.field_mt_brake)) return false;
  if(!r.integer(value.field_mt_able)) return false;
  if(!r.integer(value.field_err)) return false;
  if(!r.integer(value.field_warn)) return false;
  uint count7; if(!r.integer(count7)) return false;
  if(count7>16) {
       r.code=22;
       return false;
  }
  value.field_angle=arena.allocate!(float)(count7);
  if(value.field_angle.length!=count7) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_angle) {
  if(!r.float32(e)) return false;
  }
  foreach(ref e; value.field_pose) {
  if(!r.float32(e)) return false;
  }
  foreach(ref e; value.field_offset) {
  if(!r.float32(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete xarm_msgs/RobotMsg value.
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
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/RobotMsg value.
 /// @details Require the complete 66..130-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsRobotMsg; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsRobotMsg value) {
  if(bytes.length<66 || bytes.length>130) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsSetAxisRequest {
 /// @brief Maximum canonical extent of xarm_msgs/SetAxisRequest in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of xarm_msgs/SetAxisRequest.
 /// @details Exact identity UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";
 /// @brief Original ROS type name for xarm_msgs/SetAxisRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/SetAxisRequest";
 /// @brief Selected original native identity for xarm_msgs/SetAxisRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetAxisRequest.id: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/d/API.md
 short field_id=0;
 /// @brief xarm_msgs/SetAxisRequest.data: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/d/API.md
 short field_data=0;
 /// @brief Append every canonical field of xarm_msgs/SetAxisRequest.
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
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_id)) return false;
  if(!w.integer(this.field_data)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetAxisRequest.
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
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetAxisRequest value) {
  value=Ros1Xarm_msgsSetAxisRequest.init;
  if(!r.integer(value.field_id)) return false;
  if(!r.integer(value.field_data)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetAxisRequest value.
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
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetAxisRequest value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetAxisRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetAxisRequest value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsSetAxisResponse {
 /// @brief Maximum canonical extent of xarm_msgs/SetAxisResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=134;
 /// @brief Canonical codec identity of xarm_msgs/SetAxisResponse.
 /// @details Exact identity UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7";
 /// @brief Original ROS type name for xarm_msgs/SetAxisResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/SetAxisResponse";
 /// @brief Selected original native identity for xarm_msgs/SetAxisResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetAxisResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/d/API.md
 short field_ret=0;
 /// @brief xarm_msgs/SetAxisResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetAxisResponse.
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
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetAxisResponse.
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
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetAxisResponse value) {
  value=Ros1Xarm_msgsSetAxisResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetAxisResponse value.
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
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetAxisResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetAxisResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetAxisResponse value) {
  if(bytes.length<6 || bytes.length>134) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsSetDigitalIORequest {
 /// @brief Maximum canonical extent of xarm_msgs/SetDigitalIORequest in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of xarm_msgs/SetDigitalIORequest.
 /// @details Exact identity UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";
 /// @brief Original ROS type name for xarm_msgs/SetDigitalIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/SetDigitalIORequest";
 /// @brief Selected original native identity for xarm_msgs/SetDigitalIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetDigitalIORequest.io_num: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 short field_io_num=0;
 /// @brief xarm_msgs/SetDigitalIORequest.value: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 short field_value=0;
 /// @brief Append every canonical field of xarm_msgs/SetDigitalIORequest.
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
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_io_num)) return false;
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetDigitalIORequest.
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
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetDigitalIORequest value) {
  value=Ros1Xarm_msgsSetDigitalIORequest.init;
  if(!r.integer(value.field_io_num)) return false;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetDigitalIORequest value.
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
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetDigitalIORequest value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetDigitalIORequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetDigitalIORequest value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsSetDigitalIOResponse {
 /// @brief Maximum canonical extent of xarm_msgs/SetDigitalIOResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=134;
 /// @brief Canonical codec identity of xarm_msgs/SetDigitalIOResponse.
 /// @details Exact identity UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c";
 /// @brief Original ROS type name for xarm_msgs/SetDigitalIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/SetDigitalIOResponse";
 /// @brief Selected original native identity for xarm_msgs/SetDigitalIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetDigitalIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 short field_ret=0;
 /// @brief xarm_msgs/SetDigitalIOResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetDigitalIOResponse.
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
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetDigitalIOResponse.
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
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetDigitalIOResponse value) {
  value=Ros1Xarm_msgsSetDigitalIOResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetDigitalIOResponse value.
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
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetDigitalIOResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetDigitalIOResponse value) {
  if(bytes.length<6 || bytes.length>134) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsSetInt16Request {
 /// @brief Maximum canonical extent of xarm_msgs/SetInt16Request in bytes.
 /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=2;
 /// @brief Canonical codec identity of xarm_msgs/SetInt16Request.
 /// @details Exact identity UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";
 /// @brief Original ROS type name for xarm_msgs/SetInt16Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/SetInt16Request";
 /// @brief Selected original native identity for xarm_msgs/SetInt16Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetInt16Request.data: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/d/API.md
 short field_data=0;
 /// @brief Append every canonical field of xarm_msgs/SetInt16Request.
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
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_data)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetInt16Request.
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
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetInt16Request value) {
  value=Ros1Xarm_msgsSetInt16Request.init;
  if(!r.integer(value.field_data)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetInt16Request value.
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
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetInt16Request value.
 /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetInt16Request; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetInt16Request value) {
  if(bytes.length<2 || bytes.length>2) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsSetInt16Response {
 /// @brief Maximum canonical extent of xarm_msgs/SetInt16Response in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=134;
 /// @brief Canonical codec identity of xarm_msgs/SetInt16Response.
 /// @details Exact identity UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d";
 /// @brief Original ROS type name for xarm_msgs/SetInt16Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/SetInt16Response";
 /// @brief Selected original native identity for xarm_msgs/SetInt16Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetInt16Response.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/d/API.md
 short field_ret=0;
 /// @brief xarm_msgs/SetInt16Response.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetInt16Response.
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
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetInt16Response.
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
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetInt16Response value) {
  value=Ros1Xarm_msgsSetInt16Response.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetInt16Response value.
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
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetInt16Response value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetInt16Response; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetInt16Response value) {
  if(bytes.length<6 || bytes.length>134) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsSetLoadRequest {
 /// @brief Maximum canonical extent of xarm_msgs/SetLoadRequest in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of xarm_msgs/SetLoadRequest.
 /// @details Exact identity UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077";
 /// @brief Original ROS type name for xarm_msgs/SetLoadRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/SetLoadRequest";
 /// @brief Selected original native identity for xarm_msgs/SetLoadRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetLoadRequest.mass: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/d/API.md
 float field_mass=0;
 /// @brief xarm_msgs/SetLoadRequest.xc: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/d/API.md
 float field_xc=0;
 /// @brief xarm_msgs/SetLoadRequest.yc: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/d/API.md
 float field_yc=0;
 /// @brief xarm_msgs/SetLoadRequest.zc: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/d/API.md
 float field_zc=0;
 /// @brief Append every canonical field of xarm_msgs/SetLoadRequest.
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
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_mass)) return false;
  if(!w.float32(this.field_xc)) return false;
  if(!w.float32(this.field_yc)) return false;
  if(!w.float32(this.field_zc)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetLoadRequest.
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
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetLoadRequest value) {
  value=Ros1Xarm_msgsSetLoadRequest.init;
  if(!r.float32(value.field_mass)) return false;
  if(!r.float32(value.field_xc)) return false;
  if(!r.float32(value.field_yc)) return false;
  if(!r.float32(value.field_zc)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetLoadRequest value.
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
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetLoadRequest value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetLoadRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetLoadRequest value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsSetLoadResponse {
 /// @brief Maximum canonical extent of xarm_msgs/SetLoadResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=134;
 /// @brief Canonical codec identity of xarm_msgs/SetLoadResponse.
 /// @details Exact identity UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3";
 /// @brief Original ROS type name for xarm_msgs/SetLoadResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/SetLoadResponse";
 /// @brief Selected original native identity for xarm_msgs/SetLoadResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetLoadResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/d/API.md
 short field_ret=0;
 /// @brief xarm_msgs/SetLoadResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetLoadResponse.
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
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetLoadResponse.
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
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetLoadResponse value) {
  value=Ros1Xarm_msgsSetLoadResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetLoadResponse value.
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
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetLoadResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetLoadResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetLoadResponse value) {
  if(bytes.length<6 || bytes.length>134) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsSetToolModbusRequest {
 /// @brief Maximum canonical extent of xarm_msgs/SetToolModbusRequest in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/SetToolModbusRequest.
 /// @details Exact identity UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a";
 /// @brief Original ROS type name for xarm_msgs/SetToolModbusRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/SetToolModbusRequest";
 /// @brief Selected original native identity for xarm_msgs/SetToolModbusRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetToolModbusRequest.send_data: uint8; 0..256 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 ubyte[] field_send_data=null;
 /// @brief xarm_msgs/SetToolModbusRequest.respond_len: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 short field_respond_len=0;
 /// @brief Append every canonical field of xarm_msgs/SetToolModbusRequest.
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
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_send_data.length>256) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_send_data.length)) return false;
  foreach(ref e; this.field_send_data) {
  if(!w.integer(e)) return false;
  }
  if(!w.integer(this.field_respond_len)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetToolModbusRequest.
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
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetToolModbusRequest value) {
  value=Ros1Xarm_msgsSetToolModbusRequest.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>256) {
       r.code=22;
       return false;
  }
  value.field_send_data=arena.allocate!(ubyte)(count0);
  if(value.field_send_data.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_send_data) {
  if(!r.integer(e)) return false;
  }
  if(!r.integer(value.field_respond_len)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetToolModbusRequest value.
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
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetToolModbusRequest value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetToolModbusRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetToolModbusRequest value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsSetToolModbusResponse {
 /// @brief Maximum canonical extent of xarm_msgs/SetToolModbusResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/SetToolModbusResponse.
 /// @details Exact identity UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15";
 /// @brief Original ROS type name for xarm_msgs/SetToolModbusResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/SetToolModbusResponse";
 /// @brief Selected original native identity for xarm_msgs/SetToolModbusResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetToolModbusResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 short field_ret=0;
 /// @brief xarm_msgs/SetToolModbusResponse.respond_data: uint8; 0..256 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 ubyte[] field_respond_data=null;
 /// @brief Append every canonical field of xarm_msgs/SetToolModbusResponse.
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
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(this.field_respond_data.length>256) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_respond_data.length)) return false;
  foreach(ref e; this.field_respond_data) {
  if(!w.integer(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetToolModbusResponse.
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
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetToolModbusResponse value) {
  value=Ros1Xarm_msgsSetToolModbusResponse.init;
  if(!r.integer(value.field_ret)) return false;
  uint count1; if(!r.integer(count1)) return false;
  if(count1>256) {
       r.code=22;
       return false;
  }
  value.field_respond_data=arena.allocate!(ubyte)(count1);
  if(value.field_respond_data.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_respond_data) {
  if(!r.integer(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetToolModbusResponse value.
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
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetToolModbusResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsSetToolModbusResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetToolModbusResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsTCPOffsetRequest {
 /// @brief Maximum canonical extent of xarm_msgs/TCPOffsetRequest in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of xarm_msgs/TCPOffsetRequest.
 /// @details Exact identity UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
 /// @brief Original ROS type name for xarm_msgs/TCPOffsetRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/TCPOffsetRequest";
 /// @brief Selected original native identity for xarm_msgs/TCPOffsetRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/TCPOffsetRequest.x: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/d/API.md
 float field_x=0;
 /// @brief xarm_msgs/TCPOffsetRequest.y: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/d/API.md
 float field_y=0;
 /// @brief xarm_msgs/TCPOffsetRequest.z: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/d/API.md
 float field_z=0;
 /// @brief xarm_msgs/TCPOffsetRequest.roll: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/d/API.md
 float field_roll=0;
 /// @brief xarm_msgs/TCPOffsetRequest.pitch: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/d/API.md
 float field_pitch=0;
 /// @brief xarm_msgs/TCPOffsetRequest.yaw: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/d/API.md
 float field_yaw=0;
 /// @brief Append every canonical field of xarm_msgs/TCPOffsetRequest.
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
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_x)) return false;
  if(!w.float32(this.field_y)) return false;
  if(!w.float32(this.field_z)) return false;
  if(!w.float32(this.field_roll)) return false;
  if(!w.float32(this.field_pitch)) return false;
  if(!w.float32(this.field_yaw)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/TCPOffsetRequest.
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
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsTCPOffsetRequest value) {
  value=Ros1Xarm_msgsTCPOffsetRequest.init;
  if(!r.float32(value.field_x)) return false;
  if(!r.float32(value.field_y)) return false;
  if(!r.float32(value.field_z)) return false;
  if(!r.float32(value.field_roll)) return false;
  if(!r.float32(value.field_pitch)) return false;
  if(!r.float32(value.field_yaw)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/TCPOffsetRequest value.
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
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/TCPOffsetRequest value.
 /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsTCPOffsetRequest; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsTCPOffsetRequest value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros1Xarm_msgsTCPOffsetResponse {
 /// @brief Maximum canonical extent of xarm_msgs/TCPOffsetResponse in bytes.
 /// @details The inclusive bound is 134 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=134;
 /// @brief Canonical codec identity of xarm_msgs/TCPOffsetResponse.
 /// @details Exact identity UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773";
 /// @brief Original ROS type name for xarm_msgs/TCPOffsetResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="xarm_msgs/TCPOffsetResponse";
 /// @brief Selected original native identity for xarm_msgs/TCPOffsetResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/TCPOffsetResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/d/API.md
 short field_ret=0;
 /// @brief xarm_msgs/TCPOffsetResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/TCPOffsetResponse.
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
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/TCPOffsetResponse.
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
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsTCPOffsetResponse value) {
  value=Ros1Xarm_msgsTCPOffsetResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/TCPOffsetResponse value.
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
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/TCPOffsetResponse value.
 /// @details Require the complete 6..134-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Xarm_msgsTCPOffsetResponse; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsTCPOffsetResponse value) {
  if(bytes.length<6 || bytes.length>134) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
