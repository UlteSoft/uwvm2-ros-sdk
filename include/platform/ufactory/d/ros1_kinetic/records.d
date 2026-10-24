/**
 * @file records.d
 * @brief Preserve the complete original ufactory/ros1_kinetic canonical value domain.
 * @details The selected domain contains 84 complete record/components and 196 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
// Generated complete bounded values; BetterC, caller buffers, no authority.
module ufactory.d.ros1_kinetic.records;
import roswasm.wire;
@nogc nothrow:
/// @brief Complete ROS 1 xarm_gripper/MoveGoal value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 8..8 bytes and is identified by
/// UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_gripperMoveGoal {
 /// @brief Maximum canonical extent of xarm_gripper/MoveGoal in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of xarm_gripper/MoveGoal.
 /// @details Exact identity UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e";
 /// @brief Original ROS type name for xarm_gripper/MoveGoal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_gripper/MoveGoal";
 /// @brief Selected original native identity for xarm_gripper/MoveGoal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_gripper/MoveGoal.target_pulse: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 float field_target_pulse=0;
 /// @brief xarm_gripper/MoveGoal.pulse_speed: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 float field_pulse_speed=0;
 /// @brief Append every canonical field of xarm_gripper/MoveGoal.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_target_pulse)) return false;
  if(!w.float32(this.field_pulse_speed)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_gripper/MoveGoal.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_gripperMoveGoal value) {
  value=Ros1Xarm_gripperMoveGoal.init;
  if(!r.float32(value.field_target_pulse)) return false;
  if(!r.float32(value.field_pulse_speed)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_gripper/MoveGoal value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_gripper/MoveGoal value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_gripperMoveGoal value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_gripper/MoveResult value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 3..3 bytes and is identified by
/// UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_gripperMoveResult {
 /// @brief Maximum canonical extent of xarm_gripper/MoveResult in bytes.
 /// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=3;
 /// @brief Canonical codec identity of xarm_gripper/MoveResult.
 /// @details Exact identity UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c";
 /// @brief Original ROS type name for xarm_gripper/MoveResult.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_gripper/MoveResult";
 /// @brief Selected original native identity for xarm_gripper/MoveResult.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_gripper/MoveResult.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief xarm_gripper/MoveResult.err_code: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 short field_err_code=0;
 /// @brief Append every canonical field of xarm_gripper/MoveResult.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.integer(this.field_err_code)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_gripper/MoveResult.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_gripperMoveResult value) {
  value=Ros1Xarm_gripperMoveResult.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.integer(value.field_err_code)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_gripper/MoveResult value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_gripper/MoveResult value.
 /// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_gripperMoveResult value) {
  if(bytes.length<3 || bytes.length>3) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_gripper/MoveFeedback value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 4..4 bytes and is identified by
/// UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_gripperMoveFeedback {
 /// @brief Maximum canonical extent of xarm_gripper/MoveFeedback in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of xarm_gripper/MoveFeedback.
 /// @details Exact identity UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6";
 /// @brief Original ROS type name for xarm_gripper/MoveFeedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_gripper/MoveFeedback";
 /// @brief Selected original native identity for xarm_gripper/MoveFeedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_gripper/MoveFeedback.current_pulse: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 float field_current_pulse=0;
 /// @brief Append every canonical field of xarm_gripper/MoveFeedback.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_current_pulse)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_gripper/MoveFeedback.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_gripperMoveFeedback value) {
  value=Ros1Xarm_gripperMoveFeedback.init;
  if(!r.float32(value.field_current_pulse)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_gripper/MoveFeedback value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_gripper/MoveFeedback value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_gripperMoveFeedback value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/Point value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 24..24 bytes and is identified by
/// UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Geometry_msgsPoint {
 /// @brief Maximum canonical extent of geometry_msgs/Point in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of geometry_msgs/Point.
 /// @details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
 /// @brief Original ROS type name for geometry_msgs/Point.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/Point";
 /// @brief Selected original native identity for geometry_msgs/Point.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Point.x: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 double field_x=0;
 /// @brief geometry_msgs/Point.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 double field_y=0;
 /// @brief geometry_msgs/Point.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 double field_z=0;
 /// @brief Append every canonical field of geometry_msgs/Point.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Point.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsPoint value) {
  value=Ros1Geometry_msgsPoint.init;
  if(!r.float64(value.field_x)) return false;
  if(!r.float64(value.field_y)) return false;
  if(!r.float64(value.field_z)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Point value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Point value.
 /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsPoint value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/Quaternion value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies
/// 32..32 bytes and is identified by
/// UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Geometry_msgsQuaternion {
 /// @brief Maximum canonical extent of geometry_msgs/Quaternion in bytes.
 /// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=32;
 /// @brief Canonical codec identity of geometry_msgs/Quaternion.
 /// @details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
 /// @brief Original ROS type name for geometry_msgs/Quaternion.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/Quaternion";
 /// @brief Selected original native identity for geometry_msgs/Quaternion.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Quaternion.x: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_x=0;
 /// @brief geometry_msgs/Quaternion.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_y=0;
 /// @brief geometry_msgs/Quaternion.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_z=0;
 /// @brief geometry_msgs/Quaternion.w: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_w=0;
 /// @brief Append every canonical field of geometry_msgs/Quaternion.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  if(!w.float64(this.field_w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Quaternion.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsQuaternion value) {
  value=Ros1Geometry_msgsQuaternion.init;
  if(!r.float64(value.field_x)) return false;
  if(!r.float64(value.field_y)) return false;
  if(!r.float64(value.field_z)) return false;
  if(!r.float64(value.field_w)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Quaternion value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Quaternion value.
 /// @details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsQuaternion value) {
  if(bytes.length<32 || bytes.length>32) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/Pose value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 56..56 bytes and is identified by
/// UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Geometry_msgsPose {
 /// @brief Maximum canonical extent of geometry_msgs/Pose in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=56;
 /// @brief Canonical codec identity of geometry_msgs/Pose.
 /// @details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
 /// @brief Original ROS type name for geometry_msgs/Pose.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/Pose";
 /// @brief Selected original native identity for geometry_msgs/Pose.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Pose.position: geometry_msgs/Point.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsPoint field_position=Ros1Geometry_msgsPoint.init;
 /// @brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsQuaternion field_orientation=Ros1Geometry_msgsQuaternion.init;
 /// @brief Append every canonical field of geometry_msgs/Pose.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_position.writeFields(w)) return false;
  if(!this.field_orientation.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Pose.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsPose value) {
  value=Ros1Geometry_msgsPose.init;
  if(!Ros1Geometry_msgsPoint.readFields(r,arena,value.field_position)) return false;
  if(!Ros1Geometry_msgsQuaternion.readFields(r,arena,value.field_orientation)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Pose value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Pose value.
 /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsPose value) {
  if(bytes.length<56 || bytes.length>56) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 time value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 8..8 bytes and is identified by
/// UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Time {
 /// @brief Maximum canonical extent of time in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of time.
 /// @details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
 /// @brief Original ROS type name for time.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="time";
 /// @brief Selected original native identity for time.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief time.sec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 uint field_sec=0;
 /// @brief time.nsec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 uint field_nsec=0;
 /// @brief Append every canonical field of time.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
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
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
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
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete time value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Time value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 std_msgs/Header value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 16..272 bytes and is identified by
/// UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Std_msgsHeader {
 /// @brief Maximum canonical extent of std_msgs/Header in bytes.
 /// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=272;
 /// @brief Canonical codec identity of std_msgs/Header.
 /// @details Exact identity UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7";
 /// @brief Original ROS type name for std_msgs/Header.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="std_msgs/Header";
 /// @brief Selected original native identity for std_msgs/Header.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief std_msgs/Header.seq: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 uint field_seq=0;
 /// @brief std_msgs/Header.stamp: time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 Ros1Time field_stamp=Ros1Time.init;
 /// @brief std_msgs/Header.frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_frame_id=null;
 /// @brief Append every canonical field of std_msgs/Header.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_seq)) return false;
  if(!this.field_stamp.writeFields(w)) return false;
  if(!w.text(this.field_frame_id,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of std_msgs/Header.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Std_msgsHeader value) {
  value=Ros1Std_msgsHeader.init;
  if(!r.integer(value.field_seq)) return false;
  if(!Ros1Time.readFields(r,arena,value.field_stamp)) return false;
  if(!r.text(value.field_frame_id,256)) return false;
  return true;
 }
 /// @brief Encode one complete std_msgs/Header value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_msgs/Header value.
 /// @details Require the complete 16..272-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Std_msgsHeader value) {
  if(bytes.length<16 || bytes.length>272) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/CIOState value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies
/// 76..332 bytes and is identified by
/// UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsCIOState {
 /// @brief Maximum canonical extent of xarm_msgs/CIOState in bytes.
 /// @details The inclusive bound is 332 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=332;
 /// @brief Canonical codec identity of xarm_msgs/CIOState.
 /// @details Exact identity UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057";
 /// @brief Original ROS type name for xarm_msgs/CIOState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/CIOState";
 /// @brief Selected original native identity for xarm_msgs/CIOState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/CIOState.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 Ros1Std_msgsHeader field_header=Ros1Std_msgsHeader.init;
 /// @brief xarm_msgs/CIOState.state: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 short field_state=0;
 /// @brief xarm_msgs/CIOState.code: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 short field_code=0;
 /// @brief xarm_msgs/CIOState.input_digitals: uint16; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 ushort[2] field_input_digitals=0;
 /// @brief xarm_msgs/CIOState.output_digitals: uint16; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 ushort[2] field_output_digitals=0;
 /// @brief xarm_msgs/CIOState.input_analogs: float32; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 float[2] field_input_analogs=0;
 /// @brief xarm_msgs/CIOState.output_analogs: float32; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 float[2] field_output_analogs=0;
 /// @brief xarm_msgs/CIOState.input_conf: uint8; exactly 16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 ubyte[16] field_input_conf=0;
 /// @brief xarm_msgs/CIOState.output_conf: uint8; exactly 16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 ubyte[16] field_output_conf=0;
 /// @brief Append every canonical field of xarm_msgs/CIOState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.integer(this.field_state)) return false;
  if(!w.integer(this.field_code)) return false;
  foreach(ref e; this.field_input_digitals) {
  if(!w.integer(e)) return false;
  }
  foreach(ref e; this.field_output_digitals) {
  if(!w.integer(e)) return false;
  }
  foreach(ref e; this.field_input_analogs) {
  if(!w.float32(e)) return false;
  }
  foreach(ref e; this.field_output_analogs) {
  if(!w.float32(e)) return false;
  }
  foreach(ref e; this.field_input_conf) {
  if(!w.integer(e)) return false;
  }
  foreach(ref e; this.field_output_conf) {
  if(!w.integer(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/CIOState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsCIOState value) {
  value=Ros1Xarm_msgsCIOState.init;
  if(!Ros1Std_msgsHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.integer(value.field_state)) return false;
  if(!r.integer(value.field_code)) return false;
  foreach(ref e; value.field_input_digitals) {
  if(!r.integer(e)) return false;
  }
  foreach(ref e; value.field_output_digitals) {
  if(!r.integer(e)) return false;
  }
  foreach(ref e; value.field_input_analogs) {
  if(!r.float32(e)) return false;
  }
  foreach(ref e; value.field_output_analogs) {
  if(!r.float32(e)) return false;
  }
  foreach(ref e; value.field_input_conf) {
  if(!r.integer(e)) return false;
  }
  foreach(ref e; value.field_output_conf) {
  if(!r.integer(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete xarm_msgs/CIOState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/CIOState value.
 /// @details Require the complete 76..332-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsCIOState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsCIOState value) {
  if(bytes.length<76 || bytes.length>332) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/IOState value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies
/// 16..16 bytes and is identified by
/// UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsIOState {
 /// @brief Maximum canonical extent of xarm_msgs/IOState in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of xarm_msgs/IOState.
 /// @details Exact identity UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
 /// @brief Original ROS type name for xarm_msgs/IOState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/IOState";
 /// @brief Selected original native identity for xarm_msgs/IOState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/IOState.digital_1: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 int field_digital_1=0;
 /// @brief xarm_msgs/IOState.digital_2: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 int field_digital_2=0;
 /// @brief xarm_msgs/IOState.analog_1: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 float field_analog_1=0;
 /// @brief xarm_msgs/IOState.analog_2: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 float field_analog_2=0;
 /// @brief Append every canonical field of xarm_msgs/IOState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_digital_1)) return false;
  if(!w.integer(this.field_digital_2)) return false;
  if(!w.float32(this.field_analog_1)) return false;
  if(!w.float32(this.field_analog_2)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/IOState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsIOState value) {
  value=Ros1Xarm_msgsIOState.init;
  if(!r.integer(value.field_digital_1)) return false;
  if(!r.integer(value.field_digital_2)) return false;
  if(!r.float32(value.field_analog_1)) return false;
  if(!r.float32(value.field_analog_2)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/IOState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/IOState value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsIOState value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/RobotMsg value.
/// @details All 11 declared fields are retained in source order. The canonical representation occupies
/// 82..366 bytes and is identified by
/// UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsRobotMsg {
 /// @brief Maximum canonical extent of xarm_msgs/RobotMsg in bytes.
 /// @details The inclusive bound is 366 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=366;
 /// @brief Canonical codec identity of xarm_msgs/RobotMsg.
 /// @details Exact identity UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb";
 /// @brief Original ROS type name for xarm_msgs/RobotMsg.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/RobotMsg";
 /// @brief Selected original native identity for xarm_msgs/RobotMsg.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/RobotMsg.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 Ros1Std_msgsHeader field_header=Ros1Std_msgsHeader.init;
 /// @brief xarm_msgs/RobotMsg.state: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 short field_state=0;
 /// @brief xarm_msgs/RobotMsg.mode: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 short field_mode=0;
 /// @brief xarm_msgs/RobotMsg.cmdnum: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 short field_cmdnum=0;
 /// @brief xarm_msgs/RobotMsg.mt_brake: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 short field_mt_brake=0;
 /// @brief xarm_msgs/RobotMsg.mt_able: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 short field_mt_able=0;
 /// @brief xarm_msgs/RobotMsg.err: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 short field_err=0;
 /// @brief xarm_msgs/RobotMsg.warn: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 short field_warn=0;
 /// @brief xarm_msgs/RobotMsg.angle: float32; 0..7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 float[] field_angle=null;
 /// @brief xarm_msgs/RobotMsg.pose: float32; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 float[6] field_pose=0;
 /// @brief xarm_msgs/RobotMsg.offset: float32; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 float[6] field_offset=0;
 /// @brief Append every canonical field of xarm_msgs/RobotMsg.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.integer(this.field_state)) return false;
  if(!w.integer(this.field_mode)) return false;
  if(!w.integer(this.field_cmdnum)) return false;
  if(!w.integer(this.field_mt_brake)) return false;
  if(!w.integer(this.field_mt_able)) return false;
  if(!w.integer(this.field_err)) return false;
  if(!w.integer(this.field_warn)) return false;
  if(this.field_angle.length>7) {
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
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsRobotMsg value) {
  value=Ros1Xarm_msgsRobotMsg.init;
  if(!Ros1Std_msgsHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.integer(value.field_state)) return false;
  if(!r.integer(value.field_mode)) return false;
  if(!r.integer(value.field_cmdnum)) return false;
  if(!r.integer(value.field_mt_brake)) return false;
  if(!r.integer(value.field_mt_able)) return false;
  if(!r.integer(value.field_err)) return false;
  if(!r.integer(value.field_warn)) return false;
  uint count8; if(!r.integer(count8)) return false;
  if(count8>7) {
       r.code=22;
       return false;
  }
  value.field_angle=arena.allocate!(float)(count8);
  if(value.field_angle.length!=count8) {
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
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/RobotMsg value.
 /// @details Require the complete 82..366-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsRobotMsg value) {
  if(bytes.length<82 || bytes.length>366) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/VeloMoveMsg value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies
/// 10..138 bytes and is identified by
/// UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsVeloMoveMsg {
 /// @brief Maximum canonical extent of xarm_msgs/VeloMoveMsg in bytes.
 /// @details The inclusive bound is 138 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=138;
 /// @brief Canonical codec identity of xarm_msgs/VeloMoveMsg.
 /// @details Exact identity UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032";
 /// @brief Original ROS type name for xarm_msgs/VeloMoveMsg.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/VeloMoveMsg";
 /// @brief Selected original native identity for xarm_msgs/VeloMoveMsg.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/VeloMoveMsg.speeds: float32; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/d/API-CONTRACT.md
 float[] field_speeds=null;
 /// @brief xarm_msgs/VeloMoveMsg.is_sync: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/d/API-CONTRACT.md
 bool field_is_sync=false;
 /// @brief xarm_msgs/VeloMoveMsg.is_tool_coord: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/d/API-CONTRACT.md
 bool field_is_tool_coord=false;
 /// @brief xarm_msgs/VeloMoveMsg.duration: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/d/API-CONTRACT.md
 float field_duration=0;
 /// @brief Append every canonical field of xarm_msgs/VeloMoveMsg.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_speeds.length>32) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_speeds.length)) return false;
  foreach(ref e; this.field_speeds) {
  if(!w.float32(e)) return false;
  }
  if(!w.boolean(this.field_is_sync)) return false;
  if(!w.boolean(this.field_is_tool_coord)) return false;
  if(!w.float32(this.field_duration)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/VeloMoveMsg.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsVeloMoveMsg value) {
  value=Ros1Xarm_msgsVeloMoveMsg.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>32) {
       r.code=22;
       return false;
  }
  value.field_speeds=arena.allocate!(float)(count0);
  if(value.field_speeds.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_speeds) {
  if(!r.float32(e)) return false;
  }
  if(!r.boolean(value.field_is_sync)) return false;
  if(!r.boolean(value.field_is_tool_coord)) return false;
  if(!r.float32(value.field_duration)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/VeloMoveMsg value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/VeloMoveMsg value.
 /// @details Require the complete 10..138-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsVeloMoveMsg value) {
  if(bytes.length<10 || bytes.length>138) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/CallRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes and is identified by
/// UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsCallRequest {
 /// @brief Maximum canonical extent of xarm_msgs/CallRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsCallRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of xarm_msgs/CallRequest.
 /// @details Exact identity UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsCallRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328";
 /// @brief Original ROS type name for xarm_msgs/CallRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsCallRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/CallRequest";
 /// @brief Selected original native identity for xarm_msgs/CallRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsCallRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of xarm_msgs/CallRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsCallRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/CallRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsCallRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsCallRequest value) {
  value=Ros1Xarm_msgsCallRequest.init;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/CallRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsCallRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/CallRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsCallRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsCallRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/CallResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsCallResponse {
 /// @brief Maximum canonical extent of xarm_msgs/CallResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsCallResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/CallResponse.
 /// @details Exact identity UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsCallResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0";
 /// @brief Original ROS type name for xarm_msgs/CallResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsCallResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/CallResponse";
 /// @brief Selected original native identity for xarm_msgs/CallResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsCallResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/CallResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsCallResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/CallResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsCallResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/CallResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsCallResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/CallResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsCallResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsCallResponse value) {
  value=Ros1Xarm_msgsCallResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/CallResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsCallResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/CallResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsCallResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsCallResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/ClearErrRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes and is identified by
/// UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsClearErrRequest {
 /// @brief Maximum canonical extent of xarm_msgs/ClearErrRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of xarm_msgs/ClearErrRequest.
 /// @details Exact identity UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";
 /// @brief Original ROS type name for xarm_msgs/ClearErrRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/ClearErrRequest";
 /// @brief Selected original native identity for xarm_msgs/ClearErrRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of xarm_msgs/ClearErrRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/ClearErrRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsClearErrRequest value) {
  value=Ros1Xarm_msgsClearErrRequest.init;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/ClearErrRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/ClearErrRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsClearErrRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/ClearErrResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsClearErrResponse {
 /// @brief Maximum canonical extent of xarm_msgs/ClearErrResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/ClearErrResponse.
 /// @details Exact identity UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054";
 /// @brief Original ROS type name for xarm_msgs/ClearErrResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/ClearErrResponse";
 /// @brief Selected original native identity for xarm_msgs/ClearErrResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/ClearErrResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/ClearErrResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/ClearErrResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/ClearErrResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsClearErrResponse value) {
  value=Ros1Xarm_msgsClearErrResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/ClearErrResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/ClearErrResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsClearErrResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/ConfigToolModbusRequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 8..8 bytes and is identified by
/// UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsConfigToolModbusRequest {
 /// @brief Maximum canonical extent of xarm_msgs/ConfigToolModbusRequest in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of xarm_msgs/ConfigToolModbusRequest.
 /// @details Exact identity UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5";
 /// @brief Original ROS type name for xarm_msgs/ConfigToolModbusRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/ConfigToolModbusRequest";
 /// @brief Selected original native identity for xarm_msgs/ConfigToolModbusRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/ConfigToolModbusRequest.baud_rate: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 int field_baud_rate=0;
 /// @brief xarm_msgs/ConfigToolModbusRequest.timeout_ms: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 int field_timeout_ms=0;
 /// @brief Append every canonical field of xarm_msgs/ConfigToolModbusRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_baud_rate)) return false;
  if(!w.integer(this.field_timeout_ms)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/ConfigToolModbusRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsConfigToolModbusRequest value) {
  value=Ros1Xarm_msgsConfigToolModbusRequest.init;
  if(!r.integer(value.field_baud_rate)) return false;
  if(!r.integer(value.field_timeout_ms)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/ConfigToolModbusRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/ConfigToolModbusRequest value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsConfigToolModbusRequest value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/ConfigToolModbusResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsConfigToolModbusResponse {
 /// @brief Maximum canonical extent of xarm_msgs/ConfigToolModbusResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/ConfigToolModbusResponse.
 /// @details Exact identity UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9";
 /// @brief Original ROS type name for xarm_msgs/ConfigToolModbusResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/ConfigToolModbusResponse";
 /// @brief Selected original native identity for xarm_msgs/ConfigToolModbusResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/ConfigToolModbusResponse.message: string; each string is 0..256 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief xarm_msgs/ConfigToolModbusResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief Append every canonical field of xarm_msgs/ConfigToolModbusResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_message,256)) return false;
  if(!w.integer(this.field_ret)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/ConfigToolModbusResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsConfigToolModbusResponse value) {
  value=Ros1Xarm_msgsConfigToolModbusResponse.init;
  if(!r.text(value.field_message,256)) return false;
  if(!r.integer(value.field_ret)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/ConfigToolModbusResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/ConfigToolModbusResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsConfigToolModbusResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/FtCaliLoadRequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 5..133 bytes and is identified by
/// UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsFtCaliLoadRequest {
 /// @brief Maximum canonical extent of xarm_msgs/FtCaliLoadRequest in bytes.
 /// @details The inclusive bound is 133 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=133;
 /// @brief Canonical codec identity of xarm_msgs/FtCaliLoadRequest.
 /// @details Exact identity UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167";
 /// @brief Original ROS type name for xarm_msgs/FtCaliLoadRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/FtCaliLoadRequest";
 /// @brief Selected original native identity for xarm_msgs/FtCaliLoadRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/FtCaliLoadRequest.datas: float32; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/d/API-CONTRACT.md
 float[] field_datas=null;
 /// @brief xarm_msgs/FtCaliLoadRequest.association_setting_tcp_load: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_association_setting_tcp_load=false;
 /// @brief Append every canonical field of xarm_msgs/FtCaliLoadRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_datas.length>32) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_datas.length)) return false;
  foreach(ref e; this.field_datas) {
  if(!w.float32(e)) return false;
  }
  if(!w.boolean(this.field_association_setting_tcp_load)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/FtCaliLoadRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsFtCaliLoadRequest value) {
  value=Ros1Xarm_msgsFtCaliLoadRequest.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>32) {
       r.code=22;
       return false;
  }
  value.field_datas=arena.allocate!(float)(count0);
  if(value.field_datas.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_datas) {
  if(!r.float32(e)) return false;
  }
  if(!r.boolean(value.field_association_setting_tcp_load)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/FtCaliLoadRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/FtCaliLoadRequest value.
 /// @details Require the complete 5..133-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsFtCaliLoadRequest value) {
  if(bytes.length<5 || bytes.length>133) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/FtCaliLoadResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsFtCaliLoadResponse {
 /// @brief Maximum canonical extent of xarm_msgs/FtCaliLoadResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/FtCaliLoadResponse.
 /// @details Exact identity UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7";
 /// @brief Original ROS type name for xarm_msgs/FtCaliLoadResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/FtCaliLoadResponse";
 /// @brief Selected original native identity for xarm_msgs/FtCaliLoadResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/FtCaliLoadResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/FtCaliLoadResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/FtCaliLoadResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/FtCaliLoadResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsFtCaliLoadResponse value) {
  value=Ros1Xarm_msgsFtCaliLoadResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/FtCaliLoadResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/FtCaliLoadResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsFtCaliLoadResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/FtIdenLoadRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes and is identified by
/// UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsFtIdenLoadRequest {
 /// @brief Maximum canonical extent of xarm_msgs/FtIdenLoadRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of xarm_msgs/FtIdenLoadRequest.
 /// @details Exact identity UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c";
 /// @brief Original ROS type name for xarm_msgs/FtIdenLoadRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/FtIdenLoadRequest";
 /// @brief Selected original native identity for xarm_msgs/FtIdenLoadRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of xarm_msgs/FtIdenLoadRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/FtIdenLoadRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsFtIdenLoadRequest value) {
  value=Ros1Xarm_msgsFtIdenLoadRequest.init;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/FtIdenLoadRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/FtIdenLoadRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsFtIdenLoadRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/FtIdenLoadResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 10..394 bytes and is identified by
/// UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsFtIdenLoadResponse {
 /// @brief Maximum canonical extent of xarm_msgs/FtIdenLoadResponse in bytes.
 /// @details The inclusive bound is 394 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=394;
 /// @brief Canonical codec identity of xarm_msgs/FtIdenLoadResponse.
 /// @details Exact identity UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8";
 /// @brief Original ROS type name for xarm_msgs/FtIdenLoadResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/FtIdenLoadResponse";
 /// @brief Selected original native identity for xarm_msgs/FtIdenLoadResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/FtIdenLoadResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/FtIdenLoadResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief xarm_msgs/FtIdenLoadResponse.datas: float32; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/d/API-CONTRACT.md
 float[] field_datas=null;
 /// @brief Append every canonical field of xarm_msgs/FtIdenLoadResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  if(this.field_datas.length>32) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_datas.length)) return false;
  foreach(ref e; this.field_datas) {
  if(!w.float32(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/FtIdenLoadResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsFtIdenLoadResponse value) {
  value=Ros1Xarm_msgsFtIdenLoadResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  uint count2; if(!r.integer(count2)) return false;
  if(count2>32) {
       r.code=22;
       return false;
  }
  value.field_datas=arena.allocate!(float)(count2);
  if(value.field_datas.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_datas) {
  if(!r.float32(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete xarm_msgs/FtIdenLoadResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/FtIdenLoadResponse value.
 /// @details Require the complete 10..394-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsFtIdenLoadResponse value) {
  if(bytes.length<10 || bytes.length>394) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetAnalogIORequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 2..2 bytes and is identified by
/// UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetAnalogIORequest {
 /// @brief Maximum canonical extent of xarm_msgs/GetAnalogIORequest in bytes.
 /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=2;
 /// @brief Canonical codec identity of xarm_msgs/GetAnalogIORequest.
 /// @details Exact identity UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";
 /// @brief Original ROS type name for xarm_msgs/GetAnalogIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetAnalogIORequest";
 /// @brief Selected original native identity for xarm_msgs/GetAnalogIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetAnalogIORequest.port_num: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 short field_port_num=0;
 /// @brief Append every canonical field of xarm_msgs/GetAnalogIORequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_port_num)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetAnalogIORequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetAnalogIORequest value) {
  value=Ros1Xarm_msgsGetAnalogIORequest.init;
  if(!r.integer(value.field_port_num)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetAnalogIORequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetAnalogIORequest value.
 /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetAnalogIORequest value) {
  if(bytes.length<2 || bytes.length>2) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetAnalogIOResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 10..266 bytes and is identified by
/// UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetAnalogIOResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GetAnalogIOResponse in bytes.
 /// @details The inclusive bound is 266 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=266;
 /// @brief Canonical codec identity of xarm_msgs/GetAnalogIOResponse.
 /// @details Exact identity UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835";
 /// @brief Original ROS type name for xarm_msgs/GetAnalogIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetAnalogIOResponse";
 /// @brief Selected original native identity for xarm_msgs/GetAnalogIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetAnalogIOResponse.analog_value: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 float field_analog_value=0;
 /// @brief xarm_msgs/GetAnalogIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/GetAnalogIOResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GetAnalogIOResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_analog_value)) return false;
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetAnalogIOResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetAnalogIOResponse value) {
  value=Ros1Xarm_msgsGetAnalogIOResponse.init;
  if(!r.float32(value.field_analog_value)) return false;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetAnalogIOResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetAnalogIOResponse value.
 /// @details Require the complete 10..266-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetAnalogIOResponse value) {
  if(bytes.length<10 || bytes.length>266) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetControllerDigitalIORequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 2..2 bytes and is identified by
/// UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetControllerDigitalIORequest {
 /// @brief Maximum canonical extent of xarm_msgs/GetControllerDigitalIORequest in bytes.
 /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=2;
 /// @brief Canonical codec identity of xarm_msgs/GetControllerDigitalIORequest.
 /// @details Exact identity UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c";
 /// @brief Original ROS type name for xarm_msgs/GetControllerDigitalIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetControllerDigitalIORequest";
 /// @brief Selected original native identity for xarm_msgs/GetControllerDigitalIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetControllerDigitalIORequest.io_num: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 short field_io_num=0;
 /// @brief Append every canonical field of xarm_msgs/GetControllerDigitalIORequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_io_num)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetControllerDigitalIORequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetControllerDigitalIORequest value) {
  value=Ros1Xarm_msgsGetControllerDigitalIORequest.init;
  if(!r.integer(value.field_io_num)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetControllerDigitalIORequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetControllerDigitalIORequest value.
 /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetControllerDigitalIORequest value) {
  if(bytes.length<2 || bytes.length>2) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetControllerDigitalIOResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 8..264 bytes and is identified by
/// UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetControllerDigitalIOResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GetControllerDigitalIOResponse in bytes.
 /// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=264;
 /// @brief Canonical codec identity of xarm_msgs/GetControllerDigitalIOResponse.
 /// @details Exact identity UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161";
 /// @brief Original ROS type name for xarm_msgs/GetControllerDigitalIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetControllerDigitalIOResponse";
 /// @brief Selected original native identity for xarm_msgs/GetControllerDigitalIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetControllerDigitalIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/GetControllerDigitalIOResponse.value: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 short field_value=0;
 /// @brief xarm_msgs/GetControllerDigitalIOResponse.message: string; each string is 0..256 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GetControllerDigitalIOResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.integer(this.field_value)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetControllerDigitalIOResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetControllerDigitalIOResponse value) {
  value=Ros1Xarm_msgsGetControllerDigitalIOResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.integer(value.field_value)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetControllerDigitalIOResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetControllerDigitalIOResponse value.
 /// @details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetControllerDigitalIOResponse value) {
  if(bytes.length<8 || bytes.length>264) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetDigitalIORequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes and is identified by
/// UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetDigitalIORequest {
 /// @brief Maximum canonical extent of xarm_msgs/GetDigitalIORequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of xarm_msgs/GetDigitalIORequest.
 /// @details Exact identity UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";
 /// @brief Original ROS type name for xarm_msgs/GetDigitalIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetDigitalIORequest";
 /// @brief Selected original native identity for xarm_msgs/GetDigitalIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of xarm_msgs/GetDigitalIORequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetDigitalIORequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetDigitalIORequest value) {
  value=Ros1Xarm_msgsGetDigitalIORequest.init;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetDigitalIORequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetDigitalIORequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetDigitalIORequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetDigitalIOResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies
/// 14..270 bytes and is identified by
/// UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetDigitalIOResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GetDigitalIOResponse in bytes.
 /// @details The inclusive bound is 270 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=270;
 /// @brief Canonical codec identity of xarm_msgs/GetDigitalIOResponse.
 /// @details Exact identity UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498";
 /// @brief Original ROS type name for xarm_msgs/GetDigitalIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetDigitalIOResponse";
 /// @brief Selected original native identity for xarm_msgs/GetDigitalIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetDigitalIOResponse.digital_1: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 int field_digital_1=0;
 /// @brief xarm_msgs/GetDigitalIOResponse.digital_2: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 int field_digital_2=0;
 /// @brief xarm_msgs/GetDigitalIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/GetDigitalIOResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GetDigitalIOResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_digital_1)) return false;
  if(!w.integer(this.field_digital_2)) return false;
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetDigitalIOResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetDigitalIOResponse value) {
  value=Ros1Xarm_msgsGetDigitalIOResponse.init;
  if(!r.integer(value.field_digital_1)) return false;
  if(!r.integer(value.field_digital_2)) return false;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetDigitalIOResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetDigitalIOResponse value.
 /// @details Require the complete 14..270-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetDigitalIOResponse value) {
  if(bytes.length<14 || bytes.length>270) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetErrRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes and is identified by
/// UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetErrRequest {
 /// @brief Maximum canonical extent of xarm_msgs/GetErrRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of xarm_msgs/GetErrRequest.
 /// @details Exact identity UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531";
 /// @brief Original ROS type name for xarm_msgs/GetErrRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetErrRequest";
 /// @brief Selected original native identity for xarm_msgs/GetErrRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of xarm_msgs/GetErrRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetErrRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetErrRequest value) {
  value=Ros1Xarm_msgsGetErrRequest.init;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetErrRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetErrRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetErrRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetErrResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 8..264 bytes and is identified by
/// UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetErrResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GetErrResponse in bytes.
 /// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=264;
 /// @brief Canonical codec identity of xarm_msgs/GetErrResponse.
 /// @details Exact identity UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de";
 /// @brief Original ROS type name for xarm_msgs/GetErrResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetErrResponse";
 /// @brief Selected original native identity for xarm_msgs/GetErrResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetErrResponse.err: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/d/API-CONTRACT.md
 short field_err=0;
 /// @brief xarm_msgs/GetErrResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/GetErrResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GetErrResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_err)) return false;
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetErrResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetErrResponse value) {
  value=Ros1Xarm_msgsGetErrResponse.init;
  if(!r.integer(value.field_err)) return false;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetErrResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetErrResponse value.
 /// @details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetErrResponse value) {
  if(bytes.length<8 || bytes.length>264) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetFloat32ListRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes and is identified by
/// UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetFloat32ListRequest {
 /// @brief Maximum canonical extent of xarm_msgs/GetFloat32ListRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of xarm_msgs/GetFloat32ListRequest.
 /// @details Exact identity UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db";
 /// @brief Original ROS type name for xarm_msgs/GetFloat32ListRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetFloat32ListRequest";
 /// @brief Selected original native identity for xarm_msgs/GetFloat32ListRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of xarm_msgs/GetFloat32ListRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetFloat32ListRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetFloat32ListRequest value) {
  value=Ros1Xarm_msgsGetFloat32ListRequest.init;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetFloat32ListRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetFloat32ListRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetFloat32ListRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetFloat32ListResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 10..394 bytes and is identified by
/// UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetFloat32ListResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GetFloat32ListResponse in bytes.
 /// @details The inclusive bound is 394 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=394;
 /// @brief Canonical codec identity of xarm_msgs/GetFloat32ListResponse.
 /// @details Exact identity UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2";
 /// @brief Original ROS type name for xarm_msgs/GetFloat32ListResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetFloat32ListResponse";
 /// @brief Selected original native identity for xarm_msgs/GetFloat32ListResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetFloat32ListResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/GetFloat32ListResponse.message: string; each string is 0..256 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief xarm_msgs/GetFloat32ListResponse.datas: float32; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/d/API-CONTRACT.md
 float[] field_datas=null;
 /// @brief Append every canonical field of xarm_msgs/GetFloat32ListResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  if(this.field_datas.length>32) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_datas.length)) return false;
  foreach(ref e; this.field_datas) {
  if(!w.float32(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetFloat32ListResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetFloat32ListResponse value) {
  value=Ros1Xarm_msgsGetFloat32ListResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  uint count2; if(!r.integer(count2)) return false;
  if(count2>32) {
       r.code=22;
       return false;
  }
  value.field_datas=arena.allocate!(float)(count2);
  if(value.field_datas.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_datas) {
  if(!r.float32(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetFloat32ListResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetFloat32ListResponse value.
 /// @details Require the complete 10..394-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetFloat32ListResponse value) {
  if(bytes.length<10 || bytes.length>394) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetInt32Request value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes and is identified by
/// UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetInt32Request {
 /// @brief Maximum canonical extent of xarm_msgs/GetInt32Request in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of xarm_msgs/GetInt32Request.
 /// @details Exact identity UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470";
 /// @brief Original ROS type name for xarm_msgs/GetInt32Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetInt32Request";
 /// @brief Selected original native identity for xarm_msgs/GetInt32Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of xarm_msgs/GetInt32Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetInt32Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetInt32Request value) {
  value=Ros1Xarm_msgsGetInt32Request.init;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetInt32Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetInt32Request value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetInt32Request value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetInt32Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 10..266 bytes and is identified by
/// UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetInt32Response {
 /// @brief Maximum canonical extent of xarm_msgs/GetInt32Response in bytes.
 /// @details The inclusive bound is 266 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=266;
 /// @brief Canonical codec identity of xarm_msgs/GetInt32Response.
 /// @details Exact identity UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d";
 /// @brief Original ROS type name for xarm_msgs/GetInt32Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetInt32Response";
 /// @brief Selected original native identity for xarm_msgs/GetInt32Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetInt32Response.data: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/d/API-CONTRACT.md
 int field_data=0;
 /// @brief xarm_msgs/GetInt32Response.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/GetInt32Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GetInt32Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_data)) return false;
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetInt32Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetInt32Response value) {
  value=Ros1Xarm_msgsGetInt32Response.init;
  if(!r.integer(value.field_data)) return false;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetInt32Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetInt32Response value.
 /// @details Require the complete 10..266-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetInt32Response value) {
  if(bytes.length<10 || bytes.length>266) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetSetModbusDataRequest value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies
/// 9..4105 bytes and is identified by
/// UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetSetModbusDataRequest {
 /// @brief Maximum canonical extent of xarm_msgs/GetSetModbusDataRequest in bytes.
 /// @details The inclusive bound is 4105 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4105;
 /// @brief Canonical codec identity of xarm_msgs/GetSetModbusDataRequest.
 /// @details Exact identity UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7";
 /// @brief Original ROS type name for xarm_msgs/GetSetModbusDataRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetSetModbusDataRequest";
 /// @brief Selected original native identity for xarm_msgs/GetSetModbusDataRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetSetModbusDataRequest.send_data: uint8; 0..4096 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/d/API-CONTRACT.md
 ubyte[] field_send_data=null;
 /// @brief xarm_msgs/GetSetModbusDataRequest.respond_len: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/d/API-CONTRACT.md
 short field_respond_len=0;
 /// @brief xarm_msgs/GetSetModbusDataRequest.host_id: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/d/API-CONTRACT.md
 ubyte field_host_id=0;
 /// @brief xarm_msgs/GetSetModbusDataRequest.is_transparent_transmission: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_is_transparent_transmission=false;
 /// @brief xarm_msgs/GetSetModbusDataRequest.use_503_port: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_use_503_port=false;
 /// @brief Append every canonical field of xarm_msgs/GetSetModbusDataRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_send_data.length>4096) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_send_data.length)) return false;
  foreach(ref e; this.field_send_data) {
  if(!w.integer(e)) return false;
  }
  if(!w.integer(this.field_respond_len)) return false;
  if(!w.integer(this.field_host_id)) return false;
  if(!w.boolean(this.field_is_transparent_transmission)) return false;
  if(!w.boolean(this.field_use_503_port)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetSetModbusDataRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetSetModbusDataRequest value) {
  value=Ros1Xarm_msgsGetSetModbusDataRequest.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>4096) {
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
  if(!r.integer(value.field_host_id)) return false;
  if(!r.boolean(value.field_is_transparent_transmission)) return false;
  if(!r.boolean(value.field_use_503_port)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetSetModbusDataRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetSetModbusDataRequest value.
 /// @details Require the complete 9..4105-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetSetModbusDataRequest value) {
  if(bytes.length<9 || bytes.length>4105) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetSetModbusDataResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 10..4362 bytes and is identified by
/// UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetSetModbusDataResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GetSetModbusDataResponse in bytes.
 /// @details The inclusive bound is 4362 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4362;
 /// @brief Canonical codec identity of xarm_msgs/GetSetModbusDataResponse.
 /// @details Exact identity UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead";
 /// @brief Original ROS type name for xarm_msgs/GetSetModbusDataResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetSetModbusDataResponse";
 /// @brief Selected original native identity for xarm_msgs/GetSetModbusDataResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetSetModbusDataResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/GetSetModbusDataResponse.message: string; each string is 0..256 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief xarm_msgs/GetSetModbusDataResponse.respond_data: uint8; 0..4096 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/d/API-CONTRACT.md
 ubyte[] field_respond_data=null;
 /// @brief Append every canonical field of xarm_msgs/GetSetModbusDataResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  if(this.field_respond_data.length>4096) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_respond_data.length)) return false;
  foreach(ref e; this.field_respond_data) {
  if(!w.integer(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetSetModbusDataResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetSetModbusDataResponse value) {
  value=Ros1Xarm_msgsGetSetModbusDataResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  uint count2; if(!r.integer(count2)) return false;
  if(count2>4096) {
       r.code=22;
       return false;
  }
  value.field_respond_data=arena.allocate!(ubyte)(count2);
  if(value.field_respond_data.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_respond_data) {
  if(!r.integer(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetSetModbusDataResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetSetModbusDataResponse value.
 /// @details Require the complete 10..4362-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetSetModbusDataResponse value) {
  if(bytes.length<10 || bytes.length>4362) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GripperConfigRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 4..4 bytes and is identified by
/// UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGripperConfigRequest {
 /// @brief Maximum canonical extent of xarm_msgs/GripperConfigRequest in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of xarm_msgs/GripperConfigRequest.
 /// @details Exact identity UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4";
 /// @brief Original ROS type name for xarm_msgs/GripperConfigRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GripperConfigRequest";
 /// @brief Selected original native identity for xarm_msgs/GripperConfigRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GripperConfigRequest.pulse_vel: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/d/API-CONTRACT.md
 float field_pulse_vel=0;
 /// @brief Append every canonical field of xarm_msgs/GripperConfigRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_pulse_vel)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperConfigRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGripperConfigRequest value) {
  value=Ros1Xarm_msgsGripperConfigRequest.init;
  if(!r.float32(value.field_pulse_vel)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GripperConfigRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GripperConfigRequest value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGripperConfigRequest value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GripperConfigResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGripperConfigResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GripperConfigResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/GripperConfigResponse.
 /// @details Exact identity UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59";
 /// @brief Original ROS type name for xarm_msgs/GripperConfigResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GripperConfigResponse";
 /// @brief Selected original native identity for xarm_msgs/GripperConfigResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GripperConfigResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/GripperConfigResponse.message: string; each string is 0..256 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GripperConfigResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperConfigResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGripperConfigResponse value) {
  value=Ros1Xarm_msgsGripperConfigResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GripperConfigResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GripperConfigResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGripperConfigResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GripperMoveRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 4..4 bytes and is identified by
/// UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGripperMoveRequest {
 /// @brief Maximum canonical extent of xarm_msgs/GripperMoveRequest in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of xarm_msgs/GripperMoveRequest.
 /// @details Exact identity UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2";
 /// @brief Original ROS type name for xarm_msgs/GripperMoveRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GripperMoveRequest";
 /// @brief Selected original native identity for xarm_msgs/GripperMoveRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GripperMoveRequest.pulse_pos: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/d/API-CONTRACT.md
 float field_pulse_pos=0;
 /// @brief Append every canonical field of xarm_msgs/GripperMoveRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_pulse_pos)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperMoveRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGripperMoveRequest value) {
  value=Ros1Xarm_msgsGripperMoveRequest.init;
  if(!r.float32(value.field_pulse_pos)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GripperMoveRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GripperMoveRequest value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGripperMoveRequest value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GripperMoveResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGripperMoveResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GripperMoveResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/GripperMoveResponse.
 /// @details Exact identity UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad";
 /// @brief Original ROS type name for xarm_msgs/GripperMoveResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GripperMoveResponse";
 /// @brief Selected original native identity for xarm_msgs/GripperMoveResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GripperMoveResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/GripperMoveResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GripperMoveResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperMoveResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGripperMoveResponse value) {
  value=Ros1Xarm_msgsGripperMoveResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GripperMoveResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GripperMoveResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGripperMoveResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GripperStateRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes and is identified by
/// UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGripperStateRequest {
 /// @brief Maximum canonical extent of xarm_msgs/GripperStateRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of xarm_msgs/GripperStateRequest.
 /// @details Exact identity UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d";
 /// @brief Original ROS type name for xarm_msgs/GripperStateRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GripperStateRequest";
 /// @brief Selected original native identity for xarm_msgs/GripperStateRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of xarm_msgs/GripperStateRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperStateRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGripperStateRequest value) {
  value=Ros1Xarm_msgsGripperStateRequest.init;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GripperStateRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GripperStateRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGripperStateRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GripperStateResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies
/// 12..268 bytes and is identified by
/// UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGripperStateResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GripperStateResponse in bytes.
 /// @details The inclusive bound is 268 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=268;
 /// @brief Canonical codec identity of xarm_msgs/GripperStateResponse.
 /// @details Exact identity UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6";
 /// @brief Original ROS type name for xarm_msgs/GripperStateResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GripperStateResponse";
 /// @brief Selected original native identity for xarm_msgs/GripperStateResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GripperStateResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/GripperStateResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief xarm_msgs/GripperStateResponse.curr_pos: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/d/API-CONTRACT.md
 float field_curr_pos=0;
 /// @brief xarm_msgs/GripperStateResponse.err_code: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/d/API-CONTRACT.md
 short field_err_code=0;
 /// @brief Append every canonical field of xarm_msgs/GripperStateResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  if(!w.float32(this.field_curr_pos)) return false;
  if(!w.integer(this.field_err_code)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GripperStateResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGripperStateResponse value) {
  value=Ros1Xarm_msgsGripperStateResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  if(!r.float32(value.field_curr_pos)) return false;
  if(!r.integer(value.field_err_code)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GripperStateResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GripperStateResponse value.
 /// @details Require the complete 12..268-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGripperStateResponse value) {
  if(bytes.length<12 || bytes.length>268) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/MoveRequest value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies
/// 20..148 bytes and is identified by
/// UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsMoveRequest {
 /// @brief Maximum canonical extent of xarm_msgs/MoveRequest in bytes.
 /// @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=148;
 /// @brief Canonical codec identity of xarm_msgs/MoveRequest.
 /// @details Exact identity UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced";
 /// @brief Original ROS type name for xarm_msgs/MoveRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/MoveRequest";
 /// @brief Selected original native identity for xarm_msgs/MoveRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/MoveRequest.pose: float32; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 float[] field_pose=null;
 /// @brief xarm_msgs/MoveRequest.mvvelo: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 float field_mvvelo=0;
 /// @brief xarm_msgs/MoveRequest.mvacc: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 float field_mvacc=0;
 /// @brief xarm_msgs/MoveRequest.mvtime: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 float field_mvtime=0;
 /// @brief xarm_msgs/MoveRequest.mvradii: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 float field_mvradii=0;
 /// @brief Append every canonical field of xarm_msgs/MoveRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_pose.length>32) {
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
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsMoveRequest value) {
  value=Ros1Xarm_msgsMoveRequest.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>32) {
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
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/MoveRequest value.
 /// @details Require the complete 20..148-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsMoveRequest value) {
  if(bytes.length<20 || bytes.length>148) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/MoveResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsMoveResponse {
 /// @brief Maximum canonical extent of xarm_msgs/MoveResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/MoveResponse.
 /// @details Exact identity UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d";
 /// @brief Original ROS type name for xarm_msgs/MoveResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/MoveResponse";
 /// @brief Selected original native identity for xarm_msgs/MoveResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/MoveResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/MoveResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/MoveResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/MoveResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsMoveResponse value) {
  value=Ros1Xarm_msgsMoveResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/MoveResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/MoveResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsMoveResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/MoveAxisAngleRequest value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies
/// 20..148 bytes and is identified by
/// UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsMoveAxisAngleRequest {
 /// @brief Maximum canonical extent of xarm_msgs/MoveAxisAngleRequest in bytes.
 /// @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=148;
 /// @brief Canonical codec identity of xarm_msgs/MoveAxisAngleRequest.
 /// @details Exact identity UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30";
 /// @brief Original ROS type name for xarm_msgs/MoveAxisAngleRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/MoveAxisAngleRequest";
 /// @brief Selected original native identity for xarm_msgs/MoveAxisAngleRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/MoveAxisAngleRequest.pose: float32; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/d/API-CONTRACT.md
 float[] field_pose=null;
 /// @brief xarm_msgs/MoveAxisAngleRequest.mvvelo: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/d/API-CONTRACT.md
 float field_mvvelo=0;
 /// @brief xarm_msgs/MoveAxisAngleRequest.mvacc: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/d/API-CONTRACT.md
 float field_mvacc=0;
 /// @brief xarm_msgs/MoveAxisAngleRequest.mvtime: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/d/API-CONTRACT.md
 float field_mvtime=0;
 /// @brief xarm_msgs/MoveAxisAngleRequest.coord: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/d/API-CONTRACT.md
 short field_coord=0;
 /// @brief xarm_msgs/MoveAxisAngleRequest.relative: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/d/API-CONTRACT.md
 short field_relative=0;
 /// @brief Append every canonical field of xarm_msgs/MoveAxisAngleRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_pose.length>32) {
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
  if(!w.integer(this.field_coord)) return false;
  if(!w.integer(this.field_relative)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/MoveAxisAngleRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsMoveAxisAngleRequest value) {
  value=Ros1Xarm_msgsMoveAxisAngleRequest.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>32) {
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
  if(!r.integer(value.field_coord)) return false;
  if(!r.integer(value.field_relative)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/MoveAxisAngleRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/MoveAxisAngleRequest value.
 /// @details Require the complete 20..148-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsMoveAxisAngleRequest value) {
  if(bytes.length<20 || bytes.length>148) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/MoveAxisAngleResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsMoveAxisAngleResponse {
 /// @brief Maximum canonical extent of xarm_msgs/MoveAxisAngleResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/MoveAxisAngleResponse.
 /// @details Exact identity UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300";
 /// @brief Original ROS type name for xarm_msgs/MoveAxisAngleResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/MoveAxisAngleResponse";
 /// @brief Selected original native identity for xarm_msgs/MoveAxisAngleResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/MoveAxisAngleResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/MoveAxisAngleResponse.message: string; each string is 0..256 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/MoveAxisAngleResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/MoveAxisAngleResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsMoveAxisAngleResponse value) {
  value=Ros1Xarm_msgsMoveAxisAngleResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/MoveAxisAngleResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/MoveAxisAngleResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsMoveAxisAngleResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/MoveVeloRequest value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 8..136 bytes and is identified by
/// UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsMoveVeloRequest {
 /// @brief Maximum canonical extent of xarm_msgs/MoveVeloRequest in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=136;
 /// @brief Canonical codec identity of xarm_msgs/MoveVeloRequest.
 /// @details Exact identity UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204";
 /// @brief Original ROS type name for xarm_msgs/MoveVeloRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/MoveVeloRequest";
 /// @brief Selected original native identity for xarm_msgs/MoveVeloRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/MoveVeloRequest.velocities: float32; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/d/API-CONTRACT.md
 float[] field_velocities=null;
 /// @brief xarm_msgs/MoveVeloRequest.jnt_sync: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/d/API-CONTRACT.md
 short field_jnt_sync=0;
 /// @brief xarm_msgs/MoveVeloRequest.coord: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/d/API-CONTRACT.md
 short field_coord=0;
 /// @brief Append every canonical field of xarm_msgs/MoveVeloRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_velocities.length>32) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_velocities.length)) return false;
  foreach(ref e; this.field_velocities) {
  if(!w.float32(e)) return false;
  }
  if(!w.integer(this.field_jnt_sync)) return false;
  if(!w.integer(this.field_coord)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/MoveVeloRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsMoveVeloRequest value) {
  value=Ros1Xarm_msgsMoveVeloRequest.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>32) {
       r.code=22;
       return false;
  }
  value.field_velocities=arena.allocate!(float)(count0);
  if(value.field_velocities.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_velocities) {
  if(!r.float32(e)) return false;
  }
  if(!r.integer(value.field_jnt_sync)) return false;
  if(!r.integer(value.field_coord)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/MoveVeloRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/MoveVeloRequest value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsMoveVeloRequest value) {
  if(bytes.length<8 || bytes.length>136) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/MoveVeloResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsMoveVeloResponse {
 /// @brief Maximum canonical extent of xarm_msgs/MoveVeloResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/MoveVeloResponse.
 /// @details Exact identity UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce";
 /// @brief Original ROS type name for xarm_msgs/MoveVeloResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/MoveVeloResponse";
 /// @brief Selected original native identity for xarm_msgs/MoveVeloResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/MoveVeloResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/MoveVeloResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/MoveVeloResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/MoveVeloResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsMoveVeloResponse value) {
  value=Ros1Xarm_msgsMoveVeloResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/MoveVeloResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/MoveVeloResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsMoveVeloResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/MoveVelocityRequest value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies
/// 10..138 bytes and is identified by
/// UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsMoveVelocityRequest {
 /// @brief Maximum canonical extent of xarm_msgs/MoveVelocityRequest in bytes.
 /// @details The inclusive bound is 138 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=138;
 /// @brief Canonical codec identity of xarm_msgs/MoveVelocityRequest.
 /// @details Exact identity UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef";
 /// @brief Original ROS type name for xarm_msgs/MoveVelocityRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/MoveVelocityRequest";
 /// @brief Selected original native identity for xarm_msgs/MoveVelocityRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/MoveVelocityRequest.speeds: float32; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/d/API-CONTRACT.md
 float[] field_speeds=null;
 /// @brief xarm_msgs/MoveVelocityRequest.is_sync: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_is_sync=false;
 /// @brief xarm_msgs/MoveVelocityRequest.is_tool_coord: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_is_tool_coord=false;
 /// @brief xarm_msgs/MoveVelocityRequest.duration: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/d/API-CONTRACT.md
 float field_duration=0;
 /// @brief Append every canonical field of xarm_msgs/MoveVelocityRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_speeds.length>32) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_speeds.length)) return false;
  foreach(ref e; this.field_speeds) {
  if(!w.float32(e)) return false;
  }
  if(!w.boolean(this.field_is_sync)) return false;
  if(!w.boolean(this.field_is_tool_coord)) return false;
  if(!w.float32(this.field_duration)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/MoveVelocityRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsMoveVelocityRequest value) {
  value=Ros1Xarm_msgsMoveVelocityRequest.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>32) {
       r.code=22;
       return false;
  }
  value.field_speeds=arena.allocate!(float)(count0);
  if(value.field_speeds.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_speeds) {
  if(!r.float32(e)) return false;
  }
  if(!r.boolean(value.field_is_sync)) return false;
  if(!r.boolean(value.field_is_tool_coord)) return false;
  if(!r.float32(value.field_duration)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/MoveVelocityRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/MoveVelocityRequest value.
 /// @details Require the complete 10..138-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsMoveVelocityRequest value) {
  if(bytes.length<10 || bytes.length>138) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/MoveVelocityResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsMoveVelocityResponse {
 /// @brief Maximum canonical extent of xarm_msgs/MoveVelocityResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/MoveVelocityResponse.
 /// @details Exact identity UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc";
 /// @brief Original ROS type name for xarm_msgs/MoveVelocityResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/MoveVelocityResponse";
 /// @brief Selected original native identity for xarm_msgs/MoveVelocityResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/MoveVelocityResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/MoveVelocityResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/MoveVelocityResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/MoveVelocityResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsMoveVelocityResponse value) {
  value=Ros1Xarm_msgsMoveVelocityResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/MoveVelocityResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/MoveVelocityResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsMoveVelocityResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/PlayTrajRequest value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 8..264 bytes and is identified by
/// UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsPlayTrajRequest {
 /// @brief Maximum canonical extent of xarm_msgs/PlayTrajRequest in bytes.
 /// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=264;
 /// @brief Canonical codec identity of xarm_msgs/PlayTrajRequest.
 /// @details Exact identity UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5";
 /// @brief Original ROS type name for xarm_msgs/PlayTrajRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/PlayTrajRequest";
 /// @brief Selected original native identity for xarm_msgs/PlayTrajRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/PlayTrajRequest.traj_file: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_traj_file=null;
 /// @brief xarm_msgs/PlayTrajRequest.repeat_times: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/d/API-CONTRACT.md
 short field_repeat_times=0;
 /// @brief xarm_msgs/PlayTrajRequest.speed_factor: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/d/API-CONTRACT.md
 short field_speed_factor=0;
 /// @brief Append every canonical field of xarm_msgs/PlayTrajRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_traj_file,256)) return false;
  if(!w.integer(this.field_repeat_times)) return false;
  if(!w.integer(this.field_speed_factor)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/PlayTrajRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsPlayTrajRequest value) {
  value=Ros1Xarm_msgsPlayTrajRequest.init;
  if(!r.text(value.field_traj_file,256)) return false;
  if(!r.integer(value.field_repeat_times)) return false;
  if(!r.integer(value.field_speed_factor)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/PlayTrajRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/PlayTrajRequest value.
 /// @details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsPlayTrajRequest value) {
  if(bytes.length<8 || bytes.length>264) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/PlayTrajResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsPlayTrajResponse {
 /// @brief Maximum canonical extent of xarm_msgs/PlayTrajResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/PlayTrajResponse.
 /// @details Exact identity UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a";
 /// @brief Original ROS type name for xarm_msgs/PlayTrajResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/PlayTrajResponse";
 /// @brief Selected original native identity for xarm_msgs/PlayTrajResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/PlayTrajResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/PlayTrajResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/PlayTrajResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/PlayTrajResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsPlayTrajResponse value) {
  value=Ros1Xarm_msgsPlayTrajResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/PlayTrajResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/PlayTrajResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsPlayTrajResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetAxisRequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 4..4 bytes and is identified by
/// UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetAxisRequest {
 /// @brief Maximum canonical extent of xarm_msgs/SetAxisRequest in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of xarm_msgs/SetAxisRequest.
 /// @details Exact identity UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";
 /// @brief Original ROS type name for xarm_msgs/SetAxisRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetAxisRequest";
 /// @brief Selected original native identity for xarm_msgs/SetAxisRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetAxisRequest.id: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 short field_id=0;
 /// @brief xarm_msgs/SetAxisRequest.data: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 short field_data=0;
 /// @brief Append every canonical field of xarm_msgs/SetAxisRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_id)) return false;
  if(!w.integer(this.field_data)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetAxisRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetAxisRequest value) {
  value=Ros1Xarm_msgsSetAxisRequest.init;
  if(!r.integer(value.field_id)) return false;
  if(!r.integer(value.field_data)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetAxisRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetAxisRequest value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetAxisRequest value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetAxisResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetAxisResponse {
 /// @brief Maximum canonical extent of xarm_msgs/SetAxisResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/SetAxisResponse.
 /// @details Exact identity UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27";
 /// @brief Original ROS type name for xarm_msgs/SetAxisResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetAxisResponse";
 /// @brief Selected original native identity for xarm_msgs/SetAxisResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetAxisResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/SetAxisResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetAxisResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetAxisResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetAxisResponse value) {
  value=Ros1Xarm_msgsSetAxisResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetAxisResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetAxisResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetAxisResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetControllerAnalogIORequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..6 bytes and is identified by
/// UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetControllerAnalogIORequest {
 /// @brief Maximum canonical extent of xarm_msgs/SetControllerAnalogIORequest in bytes.
 /// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=6;
 /// @brief Canonical codec identity of xarm_msgs/SetControllerAnalogIORequest.
 /// @details Exact identity UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66";
 /// @brief Original ROS type name for xarm_msgs/SetControllerAnalogIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetControllerAnalogIORequest";
 /// @brief Selected original native identity for xarm_msgs/SetControllerAnalogIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetControllerAnalogIORequest.port_num: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 short field_port_num=0;
 /// @brief xarm_msgs/SetControllerAnalogIORequest.analog_value: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 float field_analog_value=0;
 /// @brief Append every canonical field of xarm_msgs/SetControllerAnalogIORequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_port_num)) return false;
  if(!w.float32(this.field_analog_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetControllerAnalogIORequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetControllerAnalogIORequest value) {
  value=Ros1Xarm_msgsSetControllerAnalogIORequest.init;
  if(!r.integer(value.field_port_num)) return false;
  if(!r.float32(value.field_analog_value)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetControllerAnalogIORequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetControllerAnalogIORequest value.
 /// @details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetControllerAnalogIORequest value) {
  if(bytes.length<6 || bytes.length>6) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetControllerAnalogIOResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetControllerAnalogIOResponse {
 /// @brief Maximum canonical extent of xarm_msgs/SetControllerAnalogIOResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/SetControllerAnalogIOResponse.
 /// @details Exact identity UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec";
 /// @brief Original ROS type name for xarm_msgs/SetControllerAnalogIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetControllerAnalogIOResponse";
 /// @brief Selected original native identity for xarm_msgs/SetControllerAnalogIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetControllerAnalogIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/SetControllerAnalogIOResponse.message: string; each string is 0..256 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetControllerAnalogIOResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetControllerAnalogIOResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetControllerAnalogIOResponse value) {
  value=Ros1Xarm_msgsSetControllerAnalogIOResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetControllerAnalogIOResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetControllerAnalogIOResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetControllerAnalogIOResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetDigitalIORequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 4..4 bytes and is identified by
/// UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetDigitalIORequest {
 /// @brief Maximum canonical extent of xarm_msgs/SetDigitalIORequest in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of xarm_msgs/SetDigitalIORequest.
 /// @details Exact identity UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";
 /// @brief Original ROS type name for xarm_msgs/SetDigitalIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetDigitalIORequest";
 /// @brief Selected original native identity for xarm_msgs/SetDigitalIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetDigitalIORequest.io_num: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 short field_io_num=0;
 /// @brief xarm_msgs/SetDigitalIORequest.value: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 short field_value=0;
 /// @brief Append every canonical field of xarm_msgs/SetDigitalIORequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_io_num)) return false;
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetDigitalIORequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetDigitalIORequest value) {
  value=Ros1Xarm_msgsSetDigitalIORequest.init;
  if(!r.integer(value.field_io_num)) return false;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetDigitalIORequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetDigitalIORequest value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetDigitalIORequest value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetDigitalIOResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetDigitalIOResponse {
 /// @brief Maximum canonical extent of xarm_msgs/SetDigitalIOResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/SetDigitalIOResponse.
 /// @details Exact identity UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a";
 /// @brief Original ROS type name for xarm_msgs/SetDigitalIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetDigitalIOResponse";
 /// @brief Selected original native identity for xarm_msgs/SetDigitalIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetDigitalIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/SetDigitalIOResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetDigitalIOResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetDigitalIOResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetDigitalIOResponse value) {
  value=Ros1Xarm_msgsSetDigitalIOResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetDigitalIOResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetDigitalIOResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetDigitalIOResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetFloat32Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 4..4 bytes and is identified by
/// UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetFloat32Request {
 /// @brief Maximum canonical extent of xarm_msgs/SetFloat32Request in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of xarm_msgs/SetFloat32Request.
 /// @details Exact identity UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033";
 /// @brief Original ROS type name for xarm_msgs/SetFloat32Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetFloat32Request";
 /// @brief Selected original native identity for xarm_msgs/SetFloat32Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetFloat32Request.data: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/d/API-CONTRACT.md
 float field_data=0;
 /// @brief Append every canonical field of xarm_msgs/SetFloat32Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_data)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetFloat32Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetFloat32Request value) {
  value=Ros1Xarm_msgsSetFloat32Request.init;
  if(!r.float32(value.field_data)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetFloat32Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetFloat32Request value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetFloat32Request value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetFloat32Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetFloat32Response {
 /// @brief Maximum canonical extent of xarm_msgs/SetFloat32Response in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/SetFloat32Response.
 /// @details Exact identity UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712";
 /// @brief Original ROS type name for xarm_msgs/SetFloat32Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetFloat32Response";
 /// @brief Selected original native identity for xarm_msgs/SetFloat32Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetFloat32Response.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/SetFloat32Response.message: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetFloat32Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetFloat32Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetFloat32Response value) {
  value=Ros1Xarm_msgsSetFloat32Response.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetFloat32Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetFloat32Response value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetFloat32Response value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetInt16Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 2..2 bytes and is identified by
/// UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetInt16Request {
 /// @brief Maximum canonical extent of xarm_msgs/SetInt16Request in bytes.
 /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=2;
 /// @brief Canonical codec identity of xarm_msgs/SetInt16Request.
 /// @details Exact identity UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";
 /// @brief Original ROS type name for xarm_msgs/SetInt16Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetInt16Request";
 /// @brief Selected original native identity for xarm_msgs/SetInt16Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetInt16Request.data: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 short field_data=0;
 /// @brief Append every canonical field of xarm_msgs/SetInt16Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_data)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetInt16Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetInt16Request value) {
  value=Ros1Xarm_msgsSetInt16Request.init;
  if(!r.integer(value.field_data)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetInt16Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetInt16Request value.
 /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetInt16Request value) {
  if(bytes.length<2 || bytes.length>2) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetInt16Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetInt16Response {
 /// @brief Maximum canonical extent of xarm_msgs/SetInt16Response in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/SetInt16Response.
 /// @details Exact identity UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656";
 /// @brief Original ROS type name for xarm_msgs/SetInt16Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetInt16Response";
 /// @brief Selected original native identity for xarm_msgs/SetInt16Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetInt16Response.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/SetInt16Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetInt16Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetInt16Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetInt16Response value) {
  value=Ros1Xarm_msgsSetInt16Response.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetInt16Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetInt16Response value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetInt16Response value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetLoadRequest value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies
/// 16..16 bytes and is identified by
/// UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetLoadRequest {
 /// @brief Maximum canonical extent of xarm_msgs/SetLoadRequest in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of xarm_msgs/SetLoadRequest.
 /// @details Exact identity UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077";
 /// @brief Original ROS type name for xarm_msgs/SetLoadRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetLoadRequest";
 /// @brief Selected original native identity for xarm_msgs/SetLoadRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetLoadRequest.mass: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 float field_mass=0;
 /// @brief xarm_msgs/SetLoadRequest.xc: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 float field_xc=0;
 /// @brief xarm_msgs/SetLoadRequest.yc: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 float field_yc=0;
 /// @brief xarm_msgs/SetLoadRequest.zc: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 float field_zc=0;
 /// @brief Append every canonical field of xarm_msgs/SetLoadRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_mass)) return false;
  if(!w.float32(this.field_xc)) return false;
  if(!w.float32(this.field_yc)) return false;
  if(!w.float32(this.field_zc)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetLoadRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetLoadRequest value) {
  value=Ros1Xarm_msgsSetLoadRequest.init;
  if(!r.float32(value.field_mass)) return false;
  if(!r.float32(value.field_xc)) return false;
  if(!r.float32(value.field_yc)) return false;
  if(!r.float32(value.field_zc)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetLoadRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetLoadRequest value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetLoadRequest value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetLoadResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetLoadResponse {
 /// @brief Maximum canonical extent of xarm_msgs/SetLoadResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/SetLoadResponse.
 /// @details Exact identity UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e";
 /// @brief Original ROS type name for xarm_msgs/SetLoadResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetLoadResponse";
 /// @brief Selected original native identity for xarm_msgs/SetLoadResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetLoadResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/SetLoadResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetLoadResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetLoadResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetLoadResponse value) {
  value=Ros1Xarm_msgsSetLoadResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetLoadResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetLoadResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetLoadResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetModbusTimeoutRequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 5..5 bytes and is identified by
/// UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetModbusTimeoutRequest {
 /// @brief Maximum canonical extent of xarm_msgs/SetModbusTimeoutRequest in bytes.
 /// @details The inclusive bound is 5 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=5;
 /// @brief Canonical codec identity of xarm_msgs/SetModbusTimeoutRequest.
 /// @details Exact identity UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd";
 /// @brief Original ROS type name for xarm_msgs/SetModbusTimeoutRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetModbusTimeoutRequest";
 /// @brief Selected original native identity for xarm_msgs/SetModbusTimeoutRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetModbusTimeoutRequest.timeout_ms: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/d/API-CONTRACT.md
 int field_timeout_ms=0;
 /// @brief xarm_msgs/SetModbusTimeoutRequest.is_transparent_transmission: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_is_transparent_transmission=false;
 /// @brief Append every canonical field of xarm_msgs/SetModbusTimeoutRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_timeout_ms)) return false;
  if(!w.boolean(this.field_is_transparent_transmission)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetModbusTimeoutRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetModbusTimeoutRequest value) {
  value=Ros1Xarm_msgsSetModbusTimeoutRequest.init;
  if(!r.integer(value.field_timeout_ms)) return false;
  if(!r.boolean(value.field_is_transparent_transmission)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetModbusTimeoutRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetModbusTimeoutRequest value.
 /// @details Require the complete 5..5-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetModbusTimeoutRequest value) {
  if(bytes.length<5 || bytes.length>5) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetModbusTimeoutResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetModbusTimeoutResponse {
 /// @brief Maximum canonical extent of xarm_msgs/SetModbusTimeoutResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/SetModbusTimeoutResponse.
 /// @details Exact identity UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8";
 /// @brief Original ROS type name for xarm_msgs/SetModbusTimeoutResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetModbusTimeoutResponse";
 /// @brief Selected original native identity for xarm_msgs/SetModbusTimeoutResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetModbusTimeoutResponse.message: string; each string is 0..256 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief xarm_msgs/SetModbusTimeoutResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief Append every canonical field of xarm_msgs/SetModbusTimeoutResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_message,256)) return false;
  if(!w.integer(this.field_ret)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetModbusTimeoutResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetModbusTimeoutResponse value) {
  value=Ros1Xarm_msgsSetModbusTimeoutResponse.init;
  if(!r.text(value.field_message,256)) return false;
  if(!r.integer(value.field_ret)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetModbusTimeoutResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetModbusTimeoutResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetModbusTimeoutResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetMultipleIntsRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 4..68 bytes and is identified by
/// UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetMultipleIntsRequest {
 /// @brief Maximum canonical extent of xarm_msgs/SetMultipleIntsRequest in bytes.
 /// @details The inclusive bound is 68 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=68;
 /// @brief Canonical codec identity of xarm_msgs/SetMultipleIntsRequest.
 /// @details Exact identity UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1";
 /// @brief Original ROS type name for xarm_msgs/SetMultipleIntsRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetMultipleIntsRequest";
 /// @brief Selected original native identity for xarm_msgs/SetMultipleIntsRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetMultipleIntsRequest.data_int: int16; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/d/API-CONTRACT.md
 short[] field_data_int=null;
 /// @brief Append every canonical field of xarm_msgs/SetMultipleIntsRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_data_int.length>32) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_data_int.length)) return false;
  foreach(ref e; this.field_data_int) {
  if(!w.integer(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetMultipleIntsRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetMultipleIntsRequest value) {
  value=Ros1Xarm_msgsSetMultipleIntsRequest.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>32) {
       r.code=22;
       return false;
  }
  value.field_data_int=arena.allocate!(short)(count0);
  if(value.field_data_int.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_data_int) {
  if(!r.integer(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetMultipleIntsRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetMultipleIntsRequest value.
 /// @details Require the complete 4..68-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetMultipleIntsRequest value) {
  if(bytes.length<4 || bytes.length>68) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetMultipleIntsResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetMultipleIntsResponse {
 /// @brief Maximum canonical extent of xarm_msgs/SetMultipleIntsResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/SetMultipleIntsResponse.
 /// @details Exact identity UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32";
 /// @brief Original ROS type name for xarm_msgs/SetMultipleIntsResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetMultipleIntsResponse";
 /// @brief Selected original native identity for xarm_msgs/SetMultipleIntsResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetMultipleIntsResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/SetMultipleIntsResponse.message: string; each string is 0..256 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetMultipleIntsResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetMultipleIntsResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetMultipleIntsResponse value) {
  value=Ros1Xarm_msgsSetMultipleIntsResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetMultipleIntsResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetMultipleIntsResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetMultipleIntsResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetStringRequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 8..264 bytes and is identified by
/// UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetStringRequest {
 /// @brief Maximum canonical extent of xarm_msgs/SetStringRequest in bytes.
 /// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=264;
 /// @brief Canonical codec identity of xarm_msgs/SetStringRequest.
 /// @details Exact identity UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f";
 /// @brief Original ROS type name for xarm_msgs/SetStringRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetStringRequest";
 /// @brief Selected original native identity for xarm_msgs/SetStringRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetStringRequest.str_data: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_str_data=null;
 /// @brief xarm_msgs/SetStringRequest.timeout: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/d/API-CONTRACT.md
 float field_timeout=0;
 /// @brief Append every canonical field of xarm_msgs/SetStringRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_str_data,256)) return false;
  if(!w.float32(this.field_timeout)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetStringRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetStringRequest value) {
  value=Ros1Xarm_msgsSetStringRequest.init;
  if(!r.text(value.field_str_data,256)) return false;
  if(!r.float32(value.field_timeout)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetStringRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetStringRequest value.
 /// @details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetStringRequest value) {
  if(bytes.length<8 || bytes.length>264) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetStringResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetStringResponse {
 /// @brief Maximum canonical extent of xarm_msgs/SetStringResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/SetStringResponse.
 /// @details Exact identity UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade";
 /// @brief Original ROS type name for xarm_msgs/SetStringResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetStringResponse";
 /// @brief Selected original native identity for xarm_msgs/SetStringResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetStringResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/SetStringResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetStringResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetStringResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetStringResponse value) {
  value=Ros1Xarm_msgsSetStringResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetStringResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetStringResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetStringResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetToolModbusRequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..4102 bytes and is identified by
/// UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetToolModbusRequest {
 /// @brief Maximum canonical extent of xarm_msgs/SetToolModbusRequest in bytes.
 /// @details The inclusive bound is 4102 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4102;
 /// @brief Canonical codec identity of xarm_msgs/SetToolModbusRequest.
 /// @details Exact identity UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6";
 /// @brief Original ROS type name for xarm_msgs/SetToolModbusRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetToolModbusRequest";
 /// @brief Selected original native identity for xarm_msgs/SetToolModbusRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetToolModbusRequest.send_data: uint8; 0..4096 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 ubyte[] field_send_data=null;
 /// @brief xarm_msgs/SetToolModbusRequest.respond_len: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 short field_respond_len=0;
 /// @brief Append every canonical field of xarm_msgs/SetToolModbusRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_send_data.length>4096) {
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
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetToolModbusRequest value) {
  value=Ros1Xarm_msgsSetToolModbusRequest.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>4096) {
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
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetToolModbusRequest value.
 /// @details Require the complete 6..4102-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetToolModbusRequest value) {
  if(bytes.length<6 || bytes.length>4102) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetToolModbusResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 10..4362 bytes and is identified by
/// UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetToolModbusResponse {
 /// @brief Maximum canonical extent of xarm_msgs/SetToolModbusResponse in bytes.
 /// @details The inclusive bound is 4362 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4362;
 /// @brief Canonical codec identity of xarm_msgs/SetToolModbusResponse.
 /// @details Exact identity UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76";
 /// @brief Original ROS type name for xarm_msgs/SetToolModbusResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetToolModbusResponse";
 /// @brief Selected original native identity for xarm_msgs/SetToolModbusResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetToolModbusResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/SetToolModbusResponse.message: string; each string is 0..256 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief xarm_msgs/SetToolModbusResponse.respond_data: uint8; 0..4096 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 ubyte[] field_respond_data=null;
 /// @brief Append every canonical field of xarm_msgs/SetToolModbusResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  if(this.field_respond_data.length>4096) {
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
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetToolModbusResponse value) {
  value=Ros1Xarm_msgsSetToolModbusResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  uint count2; if(!r.integer(count2)) return false;
  if(count2>4096) {
       r.code=22;
       return false;
  }
  value.field_respond_data=arena.allocate!(ubyte)(count2);
  if(value.field_respond_data.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_respond_data) {
  if(!r.integer(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetToolModbusResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetToolModbusResponse value.
 /// @details Require the complete 10..4362-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetToolModbusResponse value) {
  if(bytes.length<10 || bytes.length>4362) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/TCPOffsetRequest value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies
/// 24..24 bytes and is identified by
/// UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsTCPOffsetRequest {
 /// @brief Maximum canonical extent of xarm_msgs/TCPOffsetRequest in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of xarm_msgs/TCPOffsetRequest.
 /// @details Exact identity UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
 /// @brief Original ROS type name for xarm_msgs/TCPOffsetRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/TCPOffsetRequest";
 /// @brief Selected original native identity for xarm_msgs/TCPOffsetRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/TCPOffsetRequest.x: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 float field_x=0;
 /// @brief xarm_msgs/TCPOffsetRequest.y: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 float field_y=0;
 /// @brief xarm_msgs/TCPOffsetRequest.z: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 float field_z=0;
 /// @brief xarm_msgs/TCPOffsetRequest.roll: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 float field_roll=0;
 /// @brief xarm_msgs/TCPOffsetRequest.pitch: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 float field_pitch=0;
 /// @brief xarm_msgs/TCPOffsetRequest.yaw: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 float field_yaw=0;
 /// @brief Append every canonical field of xarm_msgs/TCPOffsetRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
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
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
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
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/TCPOffsetRequest value.
 /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsTCPOffsetRequest value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/TCPOffsetResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsTCPOffsetResponse {
 /// @brief Maximum canonical extent of xarm_msgs/TCPOffsetResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/TCPOffsetResponse.
 /// @details Exact identity UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d";
 /// @brief Original ROS type name for xarm_msgs/TCPOffsetResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/TCPOffsetResponse";
 /// @brief Selected original native identity for xarm_msgs/TCPOffsetResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/TCPOffsetResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/TCPOffsetResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/TCPOffsetResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/TCPOffsetResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsTCPOffsetResponse value) {
  value=Ros1Xarm_msgsTCPOffsetResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/TCPOffsetResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/TCPOffsetResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsTCPOffsetResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/VacuumGripperCtrlRequest value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies
/// 13..13 bytes and is identified by
/// UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsVacuumGripperCtrlRequest {
 /// @brief Maximum canonical extent of xarm_msgs/VacuumGripperCtrlRequest in bytes.
 /// @details The inclusive bound is 13 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=13;
 /// @brief Canonical codec identity of xarm_msgs/VacuumGripperCtrlRequest.
 /// @details Exact identity UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff";
 /// @brief Original ROS type name for xarm_msgs/VacuumGripperCtrlRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/VacuumGripperCtrlRequest";
 /// @brief Selected original native identity for xarm_msgs/VacuumGripperCtrlRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/VacuumGripperCtrlRequest.on: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_on=false;
 /// @brief xarm_msgs/VacuumGripperCtrlRequest.wait: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_wait=false;
 /// @brief xarm_msgs/VacuumGripperCtrlRequest.timeout: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/d/API-CONTRACT.md
 float field_timeout=0;
 /// @brief xarm_msgs/VacuumGripperCtrlRequest.delay_sec: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/d/API-CONTRACT.md
 float field_delay_sec=0;
 /// @brief xarm_msgs/VacuumGripperCtrlRequest.sync: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_sync=false;
 /// @brief xarm_msgs/VacuumGripperCtrlRequest.hardware_version: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/d/API-CONTRACT.md
 short field_hardware_version=0;
 /// @brief Append every canonical field of xarm_msgs/VacuumGripperCtrlRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_on)) return false;
  if(!w.boolean(this.field_wait)) return false;
  if(!w.float32(this.field_timeout)) return false;
  if(!w.float32(this.field_delay_sec)) return false;
  if(!w.boolean(this.field_sync)) return false;
  if(!w.integer(this.field_hardware_version)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/VacuumGripperCtrlRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsVacuumGripperCtrlRequest value) {
  value=Ros1Xarm_msgsVacuumGripperCtrlRequest.init;
  if(!r.boolean(value.field_on)) return false;
  if(!r.boolean(value.field_wait)) return false;
  if(!r.float32(value.field_timeout)) return false;
  if(!r.float32(value.field_delay_sec)) return false;
  if(!r.boolean(value.field_sync)) return false;
  if(!r.integer(value.field_hardware_version)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/VacuumGripperCtrlRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/VacuumGripperCtrlRequest value.
 /// @details Require the complete 13..13-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsVacuumGripperCtrlRequest value) {
  if(bytes.length<13 || bytes.length>13) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/VacuumGripperCtrlResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsVacuumGripperCtrlResponse {
 /// @brief Maximum canonical extent of xarm_msgs/VacuumGripperCtrlResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/VacuumGripperCtrlResponse.
 /// @details Exact identity UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540";
 /// @brief Original ROS type name for xarm_msgs/VacuumGripperCtrlResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/VacuumGripperCtrlResponse";
 /// @brief Selected original native identity for xarm_msgs/VacuumGripperCtrlResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/VacuumGripperCtrlResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/VacuumGripperCtrlResponse.message: string; each string is 0..256 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/VacuumGripperCtrlResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/VacuumGripperCtrlResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsVacuumGripperCtrlResponse value) {
  value=Ros1Xarm_msgsVacuumGripperCtrlResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/VacuumGripperCtrlResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/VacuumGripperCtrlResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsVacuumGripperCtrlResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/exec_planRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerExec_planRequest {
 /// @brief Maximum canonical extent of xarm_planner/exec_planRequest in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of xarm_planner/exec_planRequest.
 /// @details Exact identity UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3";
 /// @brief Original ROS type name for xarm_planner/exec_planRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/exec_planRequest";
 /// @brief Selected original native identity for xarm_planner/exec_planRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/exec_planRequest.exec: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_exec=false;
 /// @brief Append every canonical field of xarm_planner/exec_planRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_exec)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/exec_planRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerExec_planRequest value) {
  value=Ros1Xarm_plannerExec_planRequest.init;
  if(!r.boolean(value.field_exec)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_planner/exec_planRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/exec_planRequest value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerExec_planRequest value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/exec_planResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerExec_planResponse {
 /// @brief Maximum canonical extent of xarm_planner/exec_planResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of xarm_planner/exec_planResponse.
 /// @details Exact identity UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625";
 /// @brief Original ROS type name for xarm_planner/exec_planResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/exec_planResponse";
 /// @brief Selected original native identity for xarm_planner/exec_planResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/exec_planResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of xarm_planner/exec_planResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/exec_planResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerExec_planResponse value) {
  value=Ros1Xarm_plannerExec_planResponse.init;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_planner/exec_planResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/exec_planResponse value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerExec_planResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/joint_planRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 4..260 bytes and is identified by
/// UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerJoint_planRequest {
 /// @brief Maximum canonical extent of xarm_planner/joint_planRequest in bytes.
 /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=260;
 /// @brief Canonical codec identity of xarm_planner/joint_planRequest.
 /// @details Exact identity UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9";
 /// @brief Original ROS type name for xarm_planner/joint_planRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/joint_planRequest";
 /// @brief Selected original native identity for xarm_planner/joint_planRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/joint_planRequest.target: float64; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 double[] field_target=null;
 /// @brief Append every canonical field of xarm_planner/joint_planRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_target.length>32) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_target.length)) return false;
  foreach(ref e; this.field_target) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/joint_planRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerJoint_planRequest value) {
  value=Ros1Xarm_plannerJoint_planRequest.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>32) {
       r.code=22;
       return false;
  }
  value.field_target=arena.allocate!(double)(count0);
  if(value.field_target.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_target) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete xarm_planner/joint_planRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/joint_planRequest value.
 /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerJoint_planRequest value) {
  if(bytes.length<4 || bytes.length>260) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/joint_planResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerJoint_planResponse {
 /// @brief Maximum canonical extent of xarm_planner/joint_planResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of xarm_planner/joint_planResponse.
 /// @details Exact identity UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668";
 /// @brief Original ROS type name for xarm_planner/joint_planResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/joint_planResponse";
 /// @brief Selected original native identity for xarm_planner/joint_planResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/joint_planResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of xarm_planner/joint_planResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/joint_planResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerJoint_planResponse value) {
  value=Ros1Xarm_plannerJoint_planResponse.init;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_planner/joint_planResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/joint_planResponse value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerJoint_planResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/pose_planRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 56..56 bytes and is identified by
/// UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerPose_planRequest {
 /// @brief Maximum canonical extent of xarm_planner/pose_planRequest in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=56;
 /// @brief Canonical codec identity of xarm_planner/pose_planRequest.
 /// @details Exact identity UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22";
 /// @brief Original ROS type name for xarm_planner/pose_planRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/pose_planRequest";
 /// @brief Selected original native identity for xarm_planner/pose_planRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/pose_planRequest.target: geometry_msgs/Pose.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsPose field_target=Ros1Geometry_msgsPose.init;
 /// @brief Append every canonical field of xarm_planner/pose_planRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_target.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/pose_planRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerPose_planRequest value) {
  value=Ros1Xarm_plannerPose_planRequest.init;
  if(!Ros1Geometry_msgsPose.readFields(r,arena,value.field_target)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_planner/pose_planRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/pose_planRequest value.
 /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerPose_planRequest value) {
  if(bytes.length<56 || bytes.length>56) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/pose_planResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerPose_planResponse {
 /// @brief Maximum canonical extent of xarm_planner/pose_planResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of xarm_planner/pose_planResponse.
 /// @details Exact identity UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113";
 /// @brief Original ROS type name for xarm_planner/pose_planResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/pose_planResponse";
 /// @brief Selected original native identity for xarm_planner/pose_planResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/pose_planResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of xarm_planner/pose_planResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/pose_planResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerPose_planResponse value) {
  value=Ros1Xarm_plannerPose_planResponse.init;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_planner/pose_planResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/pose_planResponse value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerPose_planResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/single_straight_planRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 56..56 bytes and is identified by
/// UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerSingle_straight_planRequest {
 /// @brief Maximum canonical extent of xarm_planner/single_straight_planRequest in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=56;
 /// @brief Canonical codec identity of xarm_planner/single_straight_planRequest.
 /// @details Exact identity UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f";
 /// @brief Original ROS type name for xarm_planner/single_straight_planRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/single_straight_planRequest";
 /// @brief Selected original native identity for xarm_planner/single_straight_planRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/single_straight_planRequest.target: geometry_msgs/Pose.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsPose field_target=Ros1Geometry_msgsPose.init;
 /// @brief Append every canonical field of xarm_planner/single_straight_planRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_target.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/single_straight_planRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerSingle_straight_planRequest value) {
  value=Ros1Xarm_plannerSingle_straight_planRequest.init;
  if(!Ros1Geometry_msgsPose.readFields(r,arena,value.field_target)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_planner/single_straight_planRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/single_straight_planRequest value.
 /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerSingle_straight_planRequest value) {
  if(bytes.length<56 || bytes.length>56) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/single_straight_planResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerSingle_straight_planResponse {
 /// @brief Maximum canonical extent of xarm_planner/single_straight_planResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of xarm_planner/single_straight_planResponse.
 /// @details Exact identity UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd";
 /// @brief Original ROS type name for xarm_planner/single_straight_planResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/single_straight_planResponse";
 /// @brief Selected original native identity for xarm_planner/single_straight_planResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/single_straight_planResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of xarm_planner/single_straight_planResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/single_straight_planResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerSingle_straight_planResponse value) {
  value=Ros1Xarm_plannerSingle_straight_planResponse.init;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_planner/single_straight_planResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/single_straight_planResponse value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerSingle_straight_planResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
