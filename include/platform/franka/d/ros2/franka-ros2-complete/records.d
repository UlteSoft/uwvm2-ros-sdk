// Generated complete bounded values; BetterC, caller buffers, no authority.
module franka.ros2.records;
import roswasm.wire;
@nogc nothrow:
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
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Builtin_interfacesMsgTime {
 /// @brief Maximum canonical extent of builtin_interfaces/msg/Time in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of builtin_interfaces/msg/Time.
 /// @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
 /// @brief Original ROS type name for builtin_interfaces/msg/Time.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="builtin_interfaces/msg/Time";
 /// @brief Selected original native identity for builtin_interfaces/msg/Time.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief builtin_interfaces/msg/Time.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 int field_sec=0;
 /// @brief builtin_interfaces/msg/Time.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 uint field_nanosec=0;
 /// @brief Append every canonical field of builtin_interfaces/msg/Time.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_nanosec >= 1000000000) {
       w.code=22;
       return false;
  }
  if(!w.integer(this.field_sec)) return false;
  if(!w.integer(this.field_nanosec)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of builtin_interfaces/msg/Time.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Builtin_interfacesMsgTime value) {
  value=Ros2Builtin_interfacesMsgTime.init;
  if(!r.integer(value.field_sec)) return false;
  if(!r.integer(value.field_nanosec)) return false;
  if(value.field_nanosec >= 1000000000) {
       r.code=22;
       return false;
  }
  return true;
 }
 /// @brief Encode one complete builtin_interfaces/msg/Time value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete builtin_interfaces/msg/Time value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Builtin_interfacesMsgTime value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/ErrorRecovery_Goal value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionErrorRecovery_Goal {
 /// @brief Maximum canonical extent of franka_msgs/action/ErrorRecovery_Goal in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_msgs/action/ErrorRecovery_Goal.
 /// @details Exact identity UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070";
 /// @brief Original ROS type name for franka_msgs/action/ErrorRecovery_Goal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/ErrorRecovery_Goal";
 /// @brief Selected original native identity for franka_msgs/action/ErrorRecovery_Goal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_msgs/action/ErrorRecovery_Goal.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/ErrorRecovery_Goal.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionErrorRecovery_Goal value) {
  value=Ros2Franka_msgsActionErrorRecovery_Goal.init;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/ErrorRecovery_Goal value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/ErrorRecovery_Goal value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionErrorRecovery_Goal value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/ErrorRecovery_Result value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionErrorRecovery_Result {
 /// @brief Maximum canonical extent of franka_msgs/action/ErrorRecovery_Result in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_msgs/action/ErrorRecovery_Result.
 /// @details Exact identity UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9";
 /// @brief Original ROS type name for franka_msgs/action/ErrorRecovery_Result.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/ErrorRecovery_Result";
 /// @brief Selected original native identity for franka_msgs/action/ErrorRecovery_Result.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_msgs/action/ErrorRecovery_Result.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/ErrorRecovery_Result.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionErrorRecovery_Result value) {
  value=Ros2Franka_msgsActionErrorRecovery_Result.init;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/ErrorRecovery_Result value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/ErrorRecovery_Result value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionErrorRecovery_Result value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/ErrorRecovery_Feedback value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionErrorRecovery_Feedback {
 /// @brief Maximum canonical extent of franka_msgs/action/ErrorRecovery_Feedback in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_msgs/action/ErrorRecovery_Feedback.
 /// @details Exact identity UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f";
 /// @brief Original ROS type name for franka_msgs/action/ErrorRecovery_Feedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/ErrorRecovery_Feedback";
 /// @brief Selected original native identity for franka_msgs/action/ErrorRecovery_Feedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_msgs/action/ErrorRecovery_Feedback.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/ErrorRecovery_Feedback.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionErrorRecovery_Feedback value) {
  value=Ros2Franka_msgsActionErrorRecovery_Feedback.init;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/ErrorRecovery_Feedback value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/ErrorRecovery_Feedback value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionErrorRecovery_Feedback value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/msg/GraspEpsilon value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
/// is identified by UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsMsgGraspEpsilon {
 /// @brief Maximum canonical extent of franka_msgs/msg/GraspEpsilon in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of franka_msgs/msg/GraspEpsilon.
 /// @details Exact identity UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38";
 /// @brief Original ROS type name for franka_msgs/msg/GraspEpsilon.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/msg/GraspEpsilon";
 /// @brief Selected original native identity for franka_msgs/msg/GraspEpsilon.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/msg/GraspEpsilon.inner: float64.
 /// @details Schema default 0.005. Encoding preserves the original field position and signedness; invalid bounds fail
 /// instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 double field_inner=0x1.47ae147ae147bp-8;
 /// @brief franka_msgs/msg/GraspEpsilon.outer: float64.
 /// @details Schema default 0.005. Encoding preserves the original field position and signedness; invalid bounds fail
 /// instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 double field_outer=0x1.47ae147ae147bp-8;
 /// @brief Append every canonical field of franka_msgs/msg/GraspEpsilon.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_inner)) return false;
  if(!w.float64(this.field_outer)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/msg/GraspEpsilon.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsMsgGraspEpsilon value) {
  value=Ros2Franka_msgsMsgGraspEpsilon.init;
  if(!r.float64(value.field_inner)) return false;
  if(!r.float64(value.field_outer)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/msg/GraspEpsilon value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/msg/GraspEpsilon value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsMsgGraspEpsilon value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/Grasp_Goal value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 40..40 bytes and
/// is identified by UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionGrasp_Goal {
 /// @brief Maximum canonical extent of franka_msgs/action/Grasp_Goal in bytes.
 /// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=40;
 /// @brief Canonical codec identity of franka_msgs/action/Grasp_Goal.
 /// @details Exact identity UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f";
 /// @brief Original ROS type name for franka_msgs/action/Grasp_Goal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/Grasp_Goal";
 /// @brief Selected original native identity for franka_msgs/action/Grasp_Goal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/action/Grasp_Goal.width: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/d/API-CONTRACT.md
 double field_width=0;
 /// @brief franka_msgs/action/Grasp_Goal.epsilon: franka_msgs/msg/GraspEpsilon.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/d/API-CONTRACT.md
 Ros2Franka_msgsMsgGraspEpsilon field_epsilon=Ros2Franka_msgsMsgGraspEpsilon.init;
 /// @brief franka_msgs/action/Grasp_Goal.speed: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/d/API-CONTRACT.md
 double field_speed=0;
 /// @brief franka_msgs/action/Grasp_Goal.force: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/d/API-CONTRACT.md
 double field_force=0;
 /// @brief Append every canonical field of franka_msgs/action/Grasp_Goal.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_width)) return false;
  if(!this.field_epsilon.writeFields(w)) return false;
  if(!w.float64(this.field_speed)) return false;
  if(!w.float64(this.field_force)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/Grasp_Goal.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionGrasp_Goal value) {
  value=Ros2Franka_msgsActionGrasp_Goal.init;
  if(!r.float64(value.field_width)) return false;
  if(!Ros2Franka_msgsMsgGraspEpsilon.readFields(r,arena,value.field_epsilon)) return false;
  if(!r.float64(value.field_speed)) return false;
  if(!r.float64(value.field_force)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/Grasp_Goal value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/Grasp_Goal value.
 /// @details Require the complete 40..40-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionGrasp_Goal value) {
  if(bytes.length<40 || bytes.length>40) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/Grasp_Result value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionGrasp_Result {
 /// @brief Maximum canonical extent of franka_msgs/action/Grasp_Result in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/action/Grasp_Result.
 /// @details Exact identity UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733";
 /// @brief Original ROS type name for franka_msgs/action/Grasp_Result.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/Grasp_Result";
 /// @brief Selected original native identity for franka_msgs/action/Grasp_Result.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/action/Grasp_Result.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/action/Grasp_Result.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 /// NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/action/Grasp_Result.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/Grasp_Result.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionGrasp_Result value) {
  value=Ros2Franka_msgsActionGrasp_Result.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/Grasp_Result value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/Grasp_Result value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionGrasp_Result value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/Grasp_Feedback value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
/// identified by UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionGrasp_Feedback {
 /// @brief Maximum canonical extent of franka_msgs/action/Grasp_Feedback in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of franka_msgs/action/Grasp_Feedback.
 /// @details Exact identity UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe";
 /// @brief Original ROS type name for franka_msgs/action/Grasp_Feedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/Grasp_Feedback";
 /// @brief Selected original native identity for franka_msgs/action/Grasp_Feedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/action/Grasp_Feedback.current_width: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/d/API-CONTRACT.md
 double field_current_width=0;
 /// @brief Append every canonical field of franka_msgs/action/Grasp_Feedback.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_current_width)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/Grasp_Feedback.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionGrasp_Feedback value) {
  value=Ros2Franka_msgsActionGrasp_Feedback.init;
  if(!r.float64(value.field_current_width)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/Grasp_Feedback value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/Grasp_Feedback value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionGrasp_Feedback value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/Homing_Goal value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionHoming_Goal {
 /// @brief Maximum canonical extent of franka_msgs/action/Homing_Goal in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_msgs/action/Homing_Goal.
 /// @details Exact identity UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d";
 /// @brief Original ROS type name for franka_msgs/action/Homing_Goal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/Homing_Goal";
 /// @brief Selected original native identity for franka_msgs/action/Homing_Goal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_msgs/action/Homing_Goal.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/Homing_Goal.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionHoming_Goal value) {
  value=Ros2Franka_msgsActionHoming_Goal.init;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/Homing_Goal value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/Homing_Goal value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionHoming_Goal value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/Homing_Result value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionHoming_Result {
 /// @brief Maximum canonical extent of franka_msgs/action/Homing_Result in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/action/Homing_Result.
 /// @details Exact identity UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c";
 /// @brief Original ROS type name for franka_msgs/action/Homing_Result.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/Homing_Result";
 /// @brief Selected original native identity for franka_msgs/action/Homing_Result.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/action/Homing_Result.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/action/Homing_Result.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 /// NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/action/Homing_Result.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/Homing_Result.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionHoming_Result value) {
  value=Ros2Franka_msgsActionHoming_Result.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/Homing_Result value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/Homing_Result value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionHoming_Result value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/Homing_Feedback value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
/// identified by UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionHoming_Feedback {
 /// @brief Maximum canonical extent of franka_msgs/action/Homing_Feedback in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of franka_msgs/action/Homing_Feedback.
 /// @details Exact identity UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46";
 /// @brief Original ROS type name for franka_msgs/action/Homing_Feedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/Homing_Feedback";
 /// @brief Selected original native identity for franka_msgs/action/Homing_Feedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/action/Homing_Feedback.current_width: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/d/API-CONTRACT.md
 double field_current_width=0;
 /// @brief Append every canonical field of franka_msgs/action/Homing_Feedback.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_current_width)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/Homing_Feedback.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionHoming_Feedback value) {
  value=Ros2Franka_msgsActionHoming_Feedback.init;
  if(!r.float64(value.field_current_width)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/Homing_Feedback value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/Homing_Feedback value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionHoming_Feedback value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/Move_Goal value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
/// is identified by UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionMove_Goal {
 /// @brief Maximum canonical extent of franka_msgs/action/Move_Goal in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of franka_msgs/action/Move_Goal.
 /// @details Exact identity UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f";
 /// @brief Original ROS type name for franka_msgs/action/Move_Goal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/Move_Goal";
 /// @brief Selected original native identity for franka_msgs/action/Move_Goal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/action/Move_Goal.width: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/d/API-CONTRACT.md
 double field_width=0;
 /// @brief franka_msgs/action/Move_Goal.speed: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/d/API-CONTRACT.md
 double field_speed=0;
 /// @brief Append every canonical field of franka_msgs/action/Move_Goal.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_width)) return false;
  if(!w.float64(this.field_speed)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/Move_Goal.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionMove_Goal value) {
  value=Ros2Franka_msgsActionMove_Goal.init;
  if(!r.float64(value.field_width)) return false;
  if(!r.float64(value.field_speed)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/Move_Goal value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/Move_Goal value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionMove_Goal value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/Move_Result value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionMove_Result {
 /// @brief Maximum canonical extent of franka_msgs/action/Move_Result in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/action/Move_Result.
 /// @details Exact identity UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266";
 /// @brief Original ROS type name for franka_msgs/action/Move_Result.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/Move_Result";
 /// @brief Selected original native identity for franka_msgs/action/Move_Result.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/action/Move_Result.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/action/Move_Result.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 /// NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/action/Move_Result.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/Move_Result.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionMove_Result value) {
  value=Ros2Franka_msgsActionMove_Result.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/Move_Result value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/Move_Result value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionMove_Result value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/Move_Feedback value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
/// identified by UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionMove_Feedback {
 /// @brief Maximum canonical extent of franka_msgs/action/Move_Feedback in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of franka_msgs/action/Move_Feedback.
 /// @details Exact identity UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596";
 /// @brief Original ROS type name for franka_msgs/action/Move_Feedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/Move_Feedback";
 /// @brief Selected original native identity for franka_msgs/action/Move_Feedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/action/Move_Feedback.current_width: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/d/API-CONTRACT.md
 double field_current_width=0;
 /// @brief Append every canonical field of franka_msgs/action/Move_Feedback.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_current_width)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/Move_Feedback.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionMove_Feedback value) {
  value=Ros2Franka_msgsActionMove_Feedback.init;
  if(!r.float64(value.field_current_width)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/Move_Feedback value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/Move_Feedback value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionMove_Feedback value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/PTPMotion_Goal value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..128 bytes and
/// is identified by UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionPTPMotion_Goal {
 /// @brief Maximum canonical extent of franka_msgs/action/PTPMotion_Goal in bytes.
 /// @details The inclusive bound is 128 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=128;
 /// @brief Canonical codec identity of franka_msgs/action/PTPMotion_Goal.
 /// @details Exact identity UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc";
 /// @brief Original ROS type name for franka_msgs/action/PTPMotion_Goal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/PTPMotion_Goal";
 /// @brief Selected original native identity for franka_msgs/action/PTPMotion_Goal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/action/PTPMotion_Goal.goal_joint_configuration: float64; 0..7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/d/API-CONTRACT.md
 double[] field_goal_joint_configuration=null;
 /// @brief franka_msgs/action/PTPMotion_Goal.maximum_joint_velocities: float64; 0..7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/d/API-CONTRACT.md
 double[] field_maximum_joint_velocities=null;
 /// @brief franka_msgs/action/PTPMotion_Goal.goal_tolerance: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/d/API-CONTRACT.md
 double field_goal_tolerance=0;
 /// @brief Append every canonical field of franka_msgs/action/PTPMotion_Goal.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_goal_joint_configuration.length>7) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_goal_joint_configuration.length)) return false;
  foreach(ref e; this.field_goal_joint_configuration) {
  if(!w.float64(e)) return false;
  }
  if(this.field_maximum_joint_velocities.length>7) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_maximum_joint_velocities.length)) return false;
  foreach(ref e; this.field_maximum_joint_velocities) {
  if(!w.float64(e)) return false;
  }
  if(!w.float64(this.field_goal_tolerance)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/PTPMotion_Goal.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionPTPMotion_Goal value) {
  value=Ros2Franka_msgsActionPTPMotion_Goal.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>7) {
       r.code=22;
       return false;
  }
  value.field_goal_joint_configuration=arena.allocate!(double)(count0);
  if(value.field_goal_joint_configuration.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_goal_joint_configuration) {
  if(!r.float64(e)) return false;
  }
  uint count1; if(!r.integer(count1)) return false;
  if(count1>7) {
       r.code=22;
       return false;
  }
  value.field_maximum_joint_velocities=arena.allocate!(double)(count1);
  if(value.field_maximum_joint_velocities.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_maximum_joint_velocities) {
  if(!r.float64(e)) return false;
  }
  if(!r.float64(value.field_goal_tolerance)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/PTPMotion_Goal value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/PTPMotion_Goal value.
 /// @details Require the complete 16..128-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionPTPMotion_Goal value) {
  if(bytes.length<16 || bytes.length>128) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/msg/TargetStatus value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
/// identified by UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsMsgTargetStatus {
 /// @brief Maximum canonical extent of franka_msgs/msg/TargetStatus in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of franka_msgs/msg/TargetStatus.
 /// @details Exact identity UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585";
 /// @brief Original ROS type name for franka_msgs/msg/TargetStatus.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/msg/TargetStatus";
 /// @brief Selected original native identity for franka_msgs/msg/TargetStatus.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/msg/TargetStatus.IDLE: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_IDLE=0;
 /// @brief franka_msgs/msg/TargetStatus.EXECUTING: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EXECUTING=1;
 /// @brief franka_msgs/msg/TargetStatus.TARGET_REACHED: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_TARGET_REACHED=2;
 /// @brief franka_msgs/msg/TargetStatus.ABORTED: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ABORTED=3;
 /// @brief franka_msgs/msg/TargetStatus.status: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/d/API-CONTRACT.md
 ubyte field_status=0;
 /// @brief Append every canonical field of franka_msgs/msg/TargetStatus.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_status)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/msg/TargetStatus.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsMsgTargetStatus value) {
  value=Ros2Franka_msgsMsgTargetStatus.init;
  if(!r.integer(value.field_status)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/msg/TargetStatus value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/msg/TargetStatus value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsMsgTargetStatus value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/PTPMotion_Result value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionPTPMotion_Result {
 /// @brief Maximum canonical extent of franka_msgs/action/PTPMotion_Result in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/action/PTPMotion_Result.
 /// @details Exact identity UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1";
 /// @brief Original ROS type name for franka_msgs/action/PTPMotion_Result.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/PTPMotion_Result";
 /// @brief Selected original native identity for franka_msgs/action/PTPMotion_Result.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/action/PTPMotion_Result.target_status: franka_msgs/msg/TargetStatus.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/d/API-CONTRACT.md
 Ros2Franka_msgsMsgTargetStatus field_target_status=Ros2Franka_msgsMsgTargetStatus.init;
 /// @brief franka_msgs/action/PTPMotion_Result.error_message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error_message=null;
 /// @brief Append every canonical field of franka_msgs/action/PTPMotion_Result.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_target_status.writeFields(w)) return false;
  if(!w.text(this.field_error_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/PTPMotion_Result.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionPTPMotion_Result value) {
  value=Ros2Franka_msgsActionPTPMotion_Result.init;
  if(!Ros2Franka_msgsMsgTargetStatus.readFields(r,arena,value.field_target_status)) return false;
  if(!r.text(value.field_error_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/PTPMotion_Result value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/PTPMotion_Result value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionPTPMotion_Result value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/action/PTPMotion_Feedback value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
/// identified by UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsActionPTPMotion_Feedback {
 /// @brief Maximum canonical extent of franka_msgs/action/PTPMotion_Feedback in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of franka_msgs/action/PTPMotion_Feedback.
 /// @details Exact identity UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300";
 /// @brief Original ROS type name for franka_msgs/action/PTPMotion_Feedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/action/PTPMotion_Feedback";
 /// @brief Selected original native identity for franka_msgs/action/PTPMotion_Feedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/action/PTPMotion_Feedback.target_status: franka_msgs/msg/TargetStatus.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/d/API-CONTRACT.md
 Ros2Franka_msgsMsgTargetStatus field_target_status=Ros2Franka_msgsMsgTargetStatus.init;
 /// @brief Append every canonical field of franka_msgs/action/PTPMotion_Feedback.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_target_status.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/action/PTPMotion_Feedback.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsActionPTPMotion_Feedback value) {
  value=Ros2Franka_msgsActionPTPMotion_Feedback.init;
  if(!Ros2Franka_msgsMsgTargetStatus.readFields(r,arena,value.field_target_status)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/action/PTPMotion_Feedback value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/action/PTPMotion_Feedback value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsActionPTPMotion_Feedback value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Vector3 value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and
/// is identified by UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Geometry_msgsMsgVector3 {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Vector3 in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of geometry_msgs/msg/Vector3.
 /// @details Exact identity UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
 /// @brief Original ROS type name for geometry_msgs/msg/Vector3.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/msg/Vector3";
 /// @brief Selected original native identity for geometry_msgs/msg/Vector3.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Vector3.x: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/d/API-CONTRACT.md
 double field_x=0;
 /// @brief geometry_msgs/msg/Vector3.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/d/API-CONTRACT.md
 double field_y=0;
 /// @brief geometry_msgs/msg/Vector3.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/d/API-CONTRACT.md
 double field_z=0;
 /// @brief Append every canonical field of geometry_msgs/msg/Vector3.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Vector3.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgVector3 value) {
  value=Ros2Geometry_msgsMsgVector3.init;
  if(!r.float64(value.field_x)) return false;
  if(!r.float64(value.field_y)) return false;
  if(!r.float64(value.field_z)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Vector3 value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Vector3 value.
 /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgVector3 value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/msg/CollisionIndicators value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 208..208 bytes
/// and is identified by UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsMsgCollisionIndicators {
 /// @brief Maximum canonical extent of franka_msgs/msg/CollisionIndicators in bytes.
 /// @details The inclusive bound is 208 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=208;
 /// @brief Canonical codec identity of franka_msgs/msg/CollisionIndicators.
 /// @details Exact identity UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1";
 /// @brief Original ROS type name for franka_msgs/msg/CollisionIndicators.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/msg/CollisionIndicators";
 /// @brief Selected original native identity for franka_msgs/msg/CollisionIndicators.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/msg/CollisionIndicators.is_cartesian_linear_collision: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgVector3 field_is_cartesian_linear_collision=Ros2Geometry_msgsMsgVector3.init;
 /// @brief franka_msgs/msg/CollisionIndicators.is_cartesian_angular_collision: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgVector3 field_is_cartesian_angular_collision=Ros2Geometry_msgsMsgVector3.init;
 /// @brief franka_msgs/msg/CollisionIndicators.is_cartesian_linear_contact: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgVector3 field_is_cartesian_linear_contact=Ros2Geometry_msgsMsgVector3.init;
 /// @brief franka_msgs/msg/CollisionIndicators.is_cartesian_angular_contact: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgVector3 field_is_cartesian_angular_contact=Ros2Geometry_msgsMsgVector3.init;
 /// @brief franka_msgs/msg/CollisionIndicators.is_joint_collision: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/d/API-CONTRACT.md
 double[7] field_is_joint_collision=0;
 /// @brief franka_msgs/msg/CollisionIndicators.is_joint_contact: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/d/API-CONTRACT.md
 double[7] field_is_joint_contact=0;
 /// @brief Append every canonical field of franka_msgs/msg/CollisionIndicators.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_is_cartesian_linear_collision.writeFields(w)) return false;
  if(!this.field_is_cartesian_angular_collision.writeFields(w)) return false;
  if(!this.field_is_cartesian_linear_contact.writeFields(w)) return false;
  if(!this.field_is_cartesian_angular_contact.writeFields(w)) return false;
  foreach(ref e; this.field_is_joint_collision) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_is_joint_contact) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/msg/CollisionIndicators.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsMsgCollisionIndicators value) {
  value=Ros2Franka_msgsMsgCollisionIndicators.init;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_is_cartesian_linear_collision)) return false;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_is_cartesian_angular_collision)) return false;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_is_cartesian_linear_contact)) return false;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_is_cartesian_angular_contact)) return false;
  foreach(ref e; value.field_is_joint_collision) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_is_joint_contact) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/msg/CollisionIndicators value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/msg/CollisionIndicators value.
 /// @details Require the complete 208..208-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsMsgCollisionIndicators value) {
  if(bytes.length<208 || bytes.length>208) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/msg/Elbow value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 80..80 bytes and
/// is identified by UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsMsgElbow {
 /// @brief Maximum canonical extent of franka_msgs/msg/Elbow in bytes.
 /// @details The inclusive bound is 80 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsMsgElbow; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=80;
 /// @brief Canonical codec identity of franka_msgs/msg/Elbow.
 /// @details Exact identity UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsMsgElbow; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6";
 /// @brief Original ROS type name for franka_msgs/msg/Elbow.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsMsgElbow; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/msg/Elbow";
 /// @brief Selected original native identity for franka_msgs/msg/Elbow.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsMsgElbow; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/msg/Elbow.position: float64; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgElbow; share/platform/ros/d/API-CONTRACT.md
 double[2] field_position=0;
 /// @brief franka_msgs/msg/Elbow.desired_position: float64; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgElbow; share/platform/ros/d/API-CONTRACT.md
 double[2] field_desired_position=0;
 /// @brief franka_msgs/msg/Elbow.commanded_position: float64; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgElbow; share/platform/ros/d/API-CONTRACT.md
 double[2] field_commanded_position=0;
 /// @brief franka_msgs/msg/Elbow.commanded_velocity: float64; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgElbow; share/platform/ros/d/API-CONTRACT.md
 double[2] field_commanded_velocity=0;
 /// @brief franka_msgs/msg/Elbow.commanded_acceleration: float64; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgElbow; share/platform/ros/d/API-CONTRACT.md
 double[2] field_commanded_acceleration=0;
 /// @brief Append every canonical field of franka_msgs/msg/Elbow.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgElbow; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  foreach(ref e; this.field_position) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_desired_position) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_commanded_position) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_commanded_velocity) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_commanded_acceleration) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/msg/Elbow.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgElbow; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsMsgElbow value) {
  value=Ros2Franka_msgsMsgElbow.init;
  foreach(ref e; value.field_position) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_desired_position) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_commanded_position) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_commanded_velocity) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_commanded_acceleration) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/msg/Elbow value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgElbow; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/msg/Elbow value.
 /// @details Require the complete 80..80-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgElbow; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsMsgElbow value) {
  if(bytes.length<80 || bytes.length>80) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/msg/Errors value.
/// @details All 36 declared fields are retained in source order. The canonical representation occupies 36..36 bytes and
/// is identified by UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsMsgErrors {
 /// @brief Maximum canonical extent of franka_msgs/msg/Errors in bytes.
 /// @details The inclusive bound is 36 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=36;
 /// @brief Canonical codec identity of franka_msgs/msg/Errors.
 /// @details Exact identity UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c";
 /// @brief Original ROS type name for franka_msgs/msg/Errors.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/msg/Errors";
 /// @brief Selected original native identity for franka_msgs/msg/Errors.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/msg/Errors.joint_position_limits_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_position_limits_violation=false;
 /// @brief franka_msgs/msg/Errors.cartesian_position_limits_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_position_limits_violation=false;
 /// @brief franka_msgs/msg/Errors.self_collision_avoidance_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_self_collision_avoidance_violation=false;
 /// @brief franka_msgs/msg/Errors.joint_velocity_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_velocity_violation=false;
 /// @brief franka_msgs/msg/Errors.cartesian_velocity_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_velocity_violation=false;
 /// @brief franka_msgs/msg/Errors.force_control_safety_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_force_control_safety_violation=false;
 /// @brief franka_msgs/msg/Errors.joint_reflex: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_reflex=false;
 /// @brief franka_msgs/msg/Errors.cartesian_reflex: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_reflex=false;
 /// @brief franka_msgs/msg/Errors.max_goal_pose_deviation_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_max_goal_pose_deviation_violation=false;
 /// @brief franka_msgs/msg/Errors.max_path_pose_deviation_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_max_path_pose_deviation_violation=false;
 /// @brief franka_msgs/msg/Errors.cartesian_velocity_profile_safety_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_velocity_profile_safety_violation=false;
 /// @brief franka_msgs/msg/Errors.joint_position_motion_generator_start_pose_invalid: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_position_motion_generator_start_pose_invalid=false;
 /// @brief franka_msgs/msg/Errors.joint_motion_generator_position_limits_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_motion_generator_position_limits_violation=false;
 /// @brief franka_msgs/msg/Errors.joint_motion_generator_velocity_limits_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_motion_generator_velocity_limits_violation=false;
 /// @brief franka_msgs/msg/Errors.joint_motion_generator_velocity_discontinuity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_motion_generator_velocity_discontinuity=false;
 /// @brief franka_msgs/msg/Errors.joint_motion_generator_acceleration_discontinuity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_motion_generator_acceleration_discontinuity=false;
 /// @brief franka_msgs/msg/Errors.cartesian_position_motion_generator_start_pose_invalid: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_position_motion_generator_start_pose_invalid=false;
 /// @brief franka_msgs/msg/Errors.cartesian_motion_generator_elbow_limit_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_elbow_limit_violation=false;
 /// @brief franka_msgs/msg/Errors.cartesian_motion_generator_velocity_limits_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_velocity_limits_violation=false;
 /// @brief franka_msgs/msg/Errors.cartesian_motion_generator_velocity_discontinuity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_velocity_discontinuity=false;
 /// @brief franka_msgs/msg/Errors.cartesian_motion_generator_acceleration_discontinuity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_acceleration_discontinuity=false;
 /// @brief franka_msgs/msg/Errors.cartesian_motion_generator_elbow_sign_inconsistent: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_elbow_sign_inconsistent=false;
 /// @brief franka_msgs/msg/Errors.cartesian_motion_generator_start_elbow_invalid: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_start_elbow_invalid=false;
 /// @brief franka_msgs/msg/Errors.cartesian_motion_generator_joint_position_limits_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_joint_position_limits_violation=false;
 /// @brief franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_limits_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_joint_velocity_limits_violation=false;
 /// @brief franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_discontinuity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_joint_velocity_discontinuity=false;
 /// @brief franka_msgs/msg/Errors.cartesian_motion_generator_joint_acceleration_discontinuity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_joint_acceleration_discontinuity=false;
 /// @brief franka_msgs/msg/Errors.cartesian_position_motion_generator_invalid_frame: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_position_motion_generator_invalid_frame=false;
 /// @brief franka_msgs/msg/Errors.force_controller_desired_force_tolerance_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_force_controller_desired_force_tolerance_violation=false;
 /// @brief franka_msgs/msg/Errors.controller_torque_discontinuity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_controller_torque_discontinuity=false;
 /// @brief franka_msgs/msg/Errors.start_elbow_sign_inconsistent: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_start_elbow_sign_inconsistent=false;
 /// @brief franka_msgs/msg/Errors.communication_constraints_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_communication_constraints_violation=false;
 /// @brief franka_msgs/msg/Errors.power_limit_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_power_limit_violation=false;
 /// @brief franka_msgs/msg/Errors.joint_p2p_insufficient_torque_for_planning: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_p2p_insufficient_torque_for_planning=false;
 /// @brief franka_msgs/msg/Errors.tau_j_range_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_tau_j_range_violation=false;
 /// @brief franka_msgs/msg/Errors.instability_detected: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_instability_detected=false;
 /// @brief Append every canonical field of franka_msgs/msg/Errors.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_joint_position_limits_violation)) return false;
  if(!w.boolean(this.field_cartesian_position_limits_violation)) return false;
  if(!w.boolean(this.field_self_collision_avoidance_violation)) return false;
  if(!w.boolean(this.field_joint_velocity_violation)) return false;
  if(!w.boolean(this.field_cartesian_velocity_violation)) return false;
  if(!w.boolean(this.field_force_control_safety_violation)) return false;
  if(!w.boolean(this.field_joint_reflex)) return false;
  if(!w.boolean(this.field_cartesian_reflex)) return false;
  if(!w.boolean(this.field_max_goal_pose_deviation_violation)) return false;
  if(!w.boolean(this.field_max_path_pose_deviation_violation)) return false;
  if(!w.boolean(this.field_cartesian_velocity_profile_safety_violation)) return false;
  if(!w.boolean(this.field_joint_position_motion_generator_start_pose_invalid)) return false;
  if(!w.boolean(this.field_joint_motion_generator_position_limits_violation)) return false;
  if(!w.boolean(this.field_joint_motion_generator_velocity_limits_violation)) return false;
  if(!w.boolean(this.field_joint_motion_generator_velocity_discontinuity)) return false;
  if(!w.boolean(this.field_joint_motion_generator_acceleration_discontinuity)) return false;
  if(!w.boolean(this.field_cartesian_position_motion_generator_start_pose_invalid)) return false;
  if(!w.boolean(this.field_cartesian_motion_generator_elbow_limit_violation)) return false;
  if(!w.boolean(this.field_cartesian_motion_generator_velocity_limits_violation)) return false;
  if(!w.boolean(this.field_cartesian_motion_generator_velocity_discontinuity)) return false;
  if(!w.boolean(this.field_cartesian_motion_generator_acceleration_discontinuity)) return false;
  if(!w.boolean(this.field_cartesian_motion_generator_elbow_sign_inconsistent)) return false;
  if(!w.boolean(this.field_cartesian_motion_generator_start_elbow_invalid)) return false;
  if(!w.boolean(this.field_cartesian_motion_generator_joint_position_limits_violation)) return false;
  if(!w.boolean(this.field_cartesian_motion_generator_joint_velocity_limits_violation)) return false;
  if(!w.boolean(this.field_cartesian_motion_generator_joint_velocity_discontinuity)) return false;
  if(!w.boolean(this.field_cartesian_motion_generator_joint_acceleration_discontinuity)) return false;
  if(!w.boolean(this.field_cartesian_position_motion_generator_invalid_frame)) return false;
  if(!w.boolean(this.field_force_controller_desired_force_tolerance_violation)) return false;
  if(!w.boolean(this.field_controller_torque_discontinuity)) return false;
  if(!w.boolean(this.field_start_elbow_sign_inconsistent)) return false;
  if(!w.boolean(this.field_communication_constraints_violation)) return false;
  if(!w.boolean(this.field_power_limit_violation)) return false;
  if(!w.boolean(this.field_joint_p2p_insufficient_torque_for_planning)) return false;
  if(!w.boolean(this.field_tau_j_range_violation)) return false;
  if(!w.boolean(this.field_instability_detected)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/msg/Errors.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsMsgErrors value) {
  value=Ros2Franka_msgsMsgErrors.init;
  if(!r.boolean(value.field_joint_position_limits_violation)) return false;
  if(!r.boolean(value.field_cartesian_position_limits_violation)) return false;
  if(!r.boolean(value.field_self_collision_avoidance_violation)) return false;
  if(!r.boolean(value.field_joint_velocity_violation)) return false;
  if(!r.boolean(value.field_cartesian_velocity_violation)) return false;
  if(!r.boolean(value.field_force_control_safety_violation)) return false;
  if(!r.boolean(value.field_joint_reflex)) return false;
  if(!r.boolean(value.field_cartesian_reflex)) return false;
  if(!r.boolean(value.field_max_goal_pose_deviation_violation)) return false;
  if(!r.boolean(value.field_max_path_pose_deviation_violation)) return false;
  if(!r.boolean(value.field_cartesian_velocity_profile_safety_violation)) return false;
  if(!r.boolean(value.field_joint_position_motion_generator_start_pose_invalid)) return false;
  if(!r.boolean(value.field_joint_motion_generator_position_limits_violation)) return false;
  if(!r.boolean(value.field_joint_motion_generator_velocity_limits_violation)) return false;
  if(!r.boolean(value.field_joint_motion_generator_velocity_discontinuity)) return false;
  if(!r.boolean(value.field_joint_motion_generator_acceleration_discontinuity)) return false;
  if(!r.boolean(value.field_cartesian_position_motion_generator_start_pose_invalid)) return false;
  if(!r.boolean(value.field_cartesian_motion_generator_elbow_limit_violation)) return false;
  if(!r.boolean(value.field_cartesian_motion_generator_velocity_limits_violation)) return false;
  if(!r.boolean(value.field_cartesian_motion_generator_velocity_discontinuity)) return false;
  if(!r.boolean(value.field_cartesian_motion_generator_acceleration_discontinuity)) return false;
  if(!r.boolean(value.field_cartesian_motion_generator_elbow_sign_inconsistent)) return false;
  if(!r.boolean(value.field_cartesian_motion_generator_start_elbow_invalid)) return false;
  if(!r.boolean(value.field_cartesian_motion_generator_joint_position_limits_violation)) return false;
  if(!r.boolean(value.field_cartesian_motion_generator_joint_velocity_limits_violation)) return false;
  if(!r.boolean(value.field_cartesian_motion_generator_joint_velocity_discontinuity)) return false;
  if(!r.boolean(value.field_cartesian_motion_generator_joint_acceleration_discontinuity)) return false;
  if(!r.boolean(value.field_cartesian_position_motion_generator_invalid_frame)) return false;
  if(!r.boolean(value.field_force_controller_desired_force_tolerance_violation)) return false;
  if(!r.boolean(value.field_controller_torque_discontinuity)) return false;
  if(!r.boolean(value.field_start_elbow_sign_inconsistent)) return false;
  if(!r.boolean(value.field_communication_constraints_violation)) return false;
  if(!r.boolean(value.field_power_limit_violation)) return false;
  if(!r.boolean(value.field_joint_p2p_insufficient_torque_for_planning)) return false;
  if(!r.boolean(value.field_tau_j_range_violation)) return false;
  if(!r.boolean(value.field_instability_detected)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/msg/Errors value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/msg/Errors value.
 /// @details Require the complete 36..36-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgErrors; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsMsgErrors value) {
  if(bytes.length<36 || bytes.length>36) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 std_msgs/msg/Header value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes and
/// is identified by UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Std_msgsMsgHeader {
 /// @brief Maximum canonical extent of std_msgs/msg/Header in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=140;
 /// @brief Canonical codec identity of std_msgs/msg/Header.
 /// @details Exact identity UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
 /// @brief Original ROS type name for std_msgs/msg/Header.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="std_msgs/msg/Header";
 /// @brief Selected original native identity for std_msgs/msg/Header.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 Ros2Builtin_interfacesMsgTime field_stamp=Ros2Builtin_interfacesMsgTime.init;
 /// @brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_frame_id=null;
 /// @brief Append every canonical field of std_msgs/msg/Header.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_stamp.writeFields(w)) return false;
  if(!w.text(this.field_frame_id,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of std_msgs/msg/Header.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Std_msgsMsgHeader value) {
  value=Ros2Std_msgsMsgHeader.init;
  if(!Ros2Builtin_interfacesMsgTime.readFields(r,arena,value.field_stamp)) return false;
  if(!r.text(value.field_frame_id,128)) return false;
  return true;
 }
 /// @brief Encode one complete std_msgs/msg/Header value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_msgs/msg/Header value.
 /// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Std_msgsMsgHeader value) {
  if(bytes.length<12 || bytes.length>140) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 sensor_msgs/msg/JointState value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 28..1248 bytes
/// and is identified by UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Sensor_msgsMsgJointState {
 /// @brief Maximum canonical extent of sensor_msgs/msg/JointState in bytes.
 /// @details The inclusive bound is 1248 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1248;
 /// @brief Canonical codec identity of sensor_msgs/msg/JointState.
 /// @details Exact identity UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3";
 /// @brief Original ROS type name for sensor_msgs/msg/JointState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="sensor_msgs/msg/JointState";
 /// @brief Selected original native identity for sensor_msgs/msg/JointState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief sensor_msgs/msg/JointState.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief sensor_msgs/msg/JointState.name: string; 0..7 elements; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[][] field_name=null;
 /// @brief sensor_msgs/msg/JointState.position: float64; 0..7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 double[] field_position=null;
 /// @brief sensor_msgs/msg/JointState.velocity: float64; 0..7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 double[] field_velocity=null;
 /// @brief sensor_msgs/msg/JointState.effort: float64; 0..7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 double[] field_effort=null;
 /// @brief Append every canonical field of sensor_msgs/msg/JointState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_name.length != 0 && this.field_position.length != 0 && this.field_name.length != this.field_position.length) {
          w.code=22; return false; }
  if(this.field_name.length != 0 && this.field_velocity.length != 0 && this.field_name.length != this.field_velocity.length) {
          w.code=22; return false; }
  if(this.field_name.length != 0 && this.field_effort.length != 0 && this.field_name.length != this.field_effort.length) {
          w.code=22; return false; }
  if(this.field_position.length != 0 && this.field_velocity.length != 0 && this.field_position.length != this.field_velocity.length)
          {
               w.code=22;
               return false;
          }
  if(this.field_position.length != 0 && this.field_effort.length != 0 && this.field_position.length != this.field_effort.length) {
          w.code=22; return false; }
  if(this.field_velocity.length != 0 && this.field_effort.length != 0 && this.field_velocity.length != this.field_effort.length) {
          w.code=22; return false; }
  if(!this.field_header.writeFields(w)) return false;
  if(this.field_name.length>7) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_name.length)) return false;
  foreach(ref e; this.field_name) {
  if(!w.text(e,128)) return false;
  }
  if(this.field_position.length>7) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_position.length)) return false;
  foreach(ref e; this.field_position) {
  if(!w.float64(e)) return false;
  }
  if(this.field_velocity.length>7) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_velocity.length)) return false;
  foreach(ref e; this.field_velocity) {
  if(!w.float64(e)) return false;
  }
  if(this.field_effort.length>7) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_effort.length)) return false;
  foreach(ref e; this.field_effort) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of sensor_msgs/msg/JointState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Sensor_msgsMsgJointState value) {
  value=Ros2Sensor_msgsMsgJointState.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  uint count1; if(!r.integer(count1)) return false;
  if(count1>7) {
       r.code=22;
       return false;
  }
  value.field_name=arena.allocate!(const(ubyte)[])(count1);
  if(value.field_name.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_name) {
  if(!r.text(e,128)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>7) {
       r.code=22;
       return false;
  }
  value.field_position=arena.allocate!(double)(count2);
  if(value.field_position.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_position) {
  if(!r.float64(e)) return false;
  }
  uint count3; if(!r.integer(count3)) return false;
  if(count3>7) {
       r.code=22;
       return false;
  }
  value.field_velocity=arena.allocate!(double)(count3);
  if(value.field_velocity.length!=count3) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_velocity) {
  if(!r.float64(e)) return false;
  }
  uint count4; if(!r.integer(count4)) return false;
  if(count4>7) {
       r.code=22;
       return false;
  }
  value.field_effort=arena.allocate!(double)(count4);
  if(value.field_effort.length!=count4) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_effort) {
  if(!r.float64(e)) return false;
  }
  if(value.field_name.length != 0 && value.field_position.length != 0 && value.field_name.length != value.field_position.length) {
          r.code=22; return false; }
  if(value.field_name.length != 0 && value.field_velocity.length != 0 && value.field_name.length != value.field_velocity.length) {
          r.code=22; return false; }
  if(value.field_name.length != 0 && value.field_effort.length != 0 && value.field_name.length != value.field_effort.length) {
          r.code=22; return false; }
  if(value.field_position.length != 0 && value.field_velocity.length != 0 && value.field_position.length !=
          value.field_velocity.length) {
               r.code=22; return false;
          }
  if(value.field_position.length != 0 && value.field_effort.length != 0 && value.field_position.length != value.field_effort.length)
          {
               r.code=22;
               return false;
          }
  if(value.field_velocity.length != 0 && value.field_effort.length != 0 && value.field_velocity.length != value.field_effort.length)
          {
               r.code=22;
               return false;
          }
  return true;
 }
 /// @brief Encode one complete sensor_msgs/msg/JointState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete sensor_msgs/msg/JointState value.
 /// @details Require the complete 28..1248-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Sensor_msgsMsgJointState value) {
  if(bytes.length<28 || bytes.length>1248) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Wrench value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
/// is identified by UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Geometry_msgsMsgWrench {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Wrench in bytes.
 /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=48;
 /// @brief Canonical codec identity of geometry_msgs/msg/Wrench.
 /// @details Exact identity UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6";
 /// @brief Original ROS type name for geometry_msgs/msg/Wrench.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/msg/Wrench";
 /// @brief Selected original native identity for geometry_msgs/msg/Wrench.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Wrench.force: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgVector3 field_force=Ros2Geometry_msgsMsgVector3.init;
 /// @brief geometry_msgs/msg/Wrench.torque: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgVector3 field_torque=Ros2Geometry_msgsMsgVector3.init;
 /// @brief Append every canonical field of geometry_msgs/msg/Wrench.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_force.writeFields(w)) return false;
  if(!this.field_torque.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Wrench.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgWrench value) {
  value=Ros2Geometry_msgsMsgWrench.init;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_force)) return false;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_torque)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Wrench value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Wrench value.
 /// @details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgWrench value) {
  if(bytes.length<48 || bytes.length>48) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/WrenchStamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 60..188 bytes and
/// is identified by UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Geometry_msgsMsgWrenchStamped {
 /// @brief Maximum canonical extent of geometry_msgs/msg/WrenchStamped in bytes.
 /// @details The inclusive bound is 188 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=188;
 /// @brief Canonical codec identity of geometry_msgs/msg/WrenchStamped.
 /// @details Exact identity UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66";
 /// @brief Original ROS type name for geometry_msgs/msg/WrenchStamped.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/msg/WrenchStamped";
 /// @brief Selected original native identity for geometry_msgs/msg/WrenchStamped.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/WrenchStamped.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/d/API-CONTRACT.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief geometry_msgs/msg/WrenchStamped.wrench: geometry_msgs/msg/Wrench.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgWrench field_wrench=Ros2Geometry_msgsMsgWrench.init;
 /// @brief Append every canonical field of geometry_msgs/msg/WrenchStamped.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_wrench.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/WrenchStamped.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgWrenchStamped value) {
  value=Ros2Geometry_msgsMsgWrenchStamped.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Geometry_msgsMsgWrench.readFields(r,arena,value.field_wrench)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/WrenchStamped value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/WrenchStamped value.
 /// @details Require the complete 60..188-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgWrenchStamped value) {
  if(bytes.length<60 || bytes.length>188) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Inertia value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies 80..80 bytes and
/// is identified by UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Geometry_msgsMsgInertia {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Inertia in bytes.
 /// @details The inclusive bound is 80 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=80;
 /// @brief Canonical codec identity of geometry_msgs/msg/Inertia.
 /// @details Exact identity UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a";
 /// @brief Original ROS type name for geometry_msgs/msg/Inertia.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/msg/Inertia";
 /// @brief Selected original native identity for geometry_msgs/msg/Inertia.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Inertia.m: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 double field_m=0;
 /// @brief geometry_msgs/msg/Inertia.com: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgVector3 field_com=Ros2Geometry_msgsMsgVector3.init;
 /// @brief geometry_msgs/msg/Inertia.ixx: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 double field_ixx=0;
 /// @brief geometry_msgs/msg/Inertia.ixy: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 double field_ixy=0;
 /// @brief geometry_msgs/msg/Inertia.ixz: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 double field_ixz=0;
 /// @brief geometry_msgs/msg/Inertia.iyy: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 double field_iyy=0;
 /// @brief geometry_msgs/msg/Inertia.iyz: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 double field_iyz=0;
 /// @brief geometry_msgs/msg/Inertia.izz: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 double field_izz=0;
 /// @brief Append every canonical field of geometry_msgs/msg/Inertia.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_m)) return false;
  if(!this.field_com.writeFields(w)) return false;
  if(!w.float64(this.field_ixx)) return false;
  if(!w.float64(this.field_ixy)) return false;
  if(!w.float64(this.field_ixz)) return false;
  if(!w.float64(this.field_iyy)) return false;
  if(!w.float64(this.field_iyz)) return false;
  if(!w.float64(this.field_izz)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Inertia.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgInertia value) {
  value=Ros2Geometry_msgsMsgInertia.init;
  if(!r.float64(value.field_m)) return false;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_com)) return false;
  if(!r.float64(value.field_ixx)) return false;
  if(!r.float64(value.field_ixy)) return false;
  if(!r.float64(value.field_ixz)) return false;
  if(!r.float64(value.field_iyy)) return false;
  if(!r.float64(value.field_iyz)) return false;
  if(!r.float64(value.field_izz)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Inertia value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Inertia value.
 /// @details Require the complete 80..80-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgInertia value) {
  if(bytes.length<80 || bytes.length>80) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/InertiaStamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 92..220 bytes and
/// is identified by UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Geometry_msgsMsgInertiaStamped {
 /// @brief Maximum canonical extent of geometry_msgs/msg/InertiaStamped in bytes.
 /// @details The inclusive bound is 220 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=220;
 /// @brief Canonical codec identity of geometry_msgs/msg/InertiaStamped.
 /// @details Exact identity UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576";
 /// @brief Original ROS type name for geometry_msgs/msg/InertiaStamped.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/msg/InertiaStamped";
 /// @brief Selected original native identity for geometry_msgs/msg/InertiaStamped.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/InertiaStamped.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/d/API-CONTRACT.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief geometry_msgs/msg/InertiaStamped.inertia: geometry_msgs/msg/Inertia.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgInertia field_inertia=Ros2Geometry_msgsMsgInertia.init;
 /// @brief Append every canonical field of geometry_msgs/msg/InertiaStamped.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_inertia.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/InertiaStamped.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgInertiaStamped value) {
  value=Ros2Geometry_msgsMsgInertiaStamped.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Geometry_msgsMsgInertia.readFields(r,arena,value.field_inertia)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/InertiaStamped value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/InertiaStamped value.
 /// @details Require the complete 92..220-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgInertiaStamped value) {
  if(bytes.length<92 || bytes.length>220) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Point value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and
/// is identified by UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Geometry_msgsMsgPoint {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Point in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of geometry_msgs/msg/Point.
 /// @details Exact identity UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
 /// @brief Original ROS type name for geometry_msgs/msg/Point.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/msg/Point";
 /// @brief Selected original native identity for geometry_msgs/msg/Point.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Point.x: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/d/API-CONTRACT.md
 double field_x=0;
 /// @brief geometry_msgs/msg/Point.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/d/API-CONTRACT.md
 double field_y=0;
 /// @brief geometry_msgs/msg/Point.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/d/API-CONTRACT.md
 double field_z=0;
 /// @brief Append every canonical field of geometry_msgs/msg/Point.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Point.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgPoint value) {
  value=Ros2Geometry_msgsMsgPoint.init;
  if(!r.float64(value.field_x)) return false;
  if(!r.float64(value.field_y)) return false;
  if(!r.float64(value.field_z)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Point value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Point value.
 /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgPoint value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Quaternion value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes and
/// is identified by UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Geometry_msgsMsgQuaternion {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Quaternion in bytes.
 /// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=32;
 /// @brief Canonical codec identity of geometry_msgs/msg/Quaternion.
 /// @details Exact identity UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
 /// @brief Original ROS type name for geometry_msgs/msg/Quaternion.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/msg/Quaternion";
 /// @brief Selected original native identity for geometry_msgs/msg/Quaternion.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Quaternion.x: float64.
 /// @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
 /// instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_x=0x0.0p+0;
 /// @brief geometry_msgs/msg/Quaternion.y: float64.
 /// @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
 /// instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_y=0x0.0p+0;
 /// @brief geometry_msgs/msg/Quaternion.z: float64.
 /// @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
 /// instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_z=0x0.0p+0;
 /// @brief geometry_msgs/msg/Quaternion.w: float64.
 /// @details Schema default 1.0. Encoding preserves the original field position and signedness; invalid bounds fail
 /// instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_w=0x1.0000000000000p+0;
 /// @brief Append every canonical field of geometry_msgs/msg/Quaternion.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  if(!w.float64(this.field_w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Quaternion.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgQuaternion value) {
  value=Ros2Geometry_msgsMsgQuaternion.init;
  if(!r.float64(value.field_x)) return false;
  if(!r.float64(value.field_y)) return false;
  if(!r.float64(value.field_z)) return false;
  if(!r.float64(value.field_w)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Quaternion value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Quaternion value.
 /// @details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgQuaternion value) {
  if(bytes.length<32 || bytes.length>32) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Pose value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes and
/// is identified by UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Geometry_msgsMsgPose {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Pose in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=56;
 /// @brief Canonical codec identity of geometry_msgs/msg/Pose.
 /// @details Exact identity UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
 /// @brief Original ROS type name for geometry_msgs/msg/Pose.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/msg/Pose";
 /// @brief Selected original native identity for geometry_msgs/msg/Pose.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Pose.position: geometry_msgs/msg/Point.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgPoint field_position=Ros2Geometry_msgsMsgPoint.init;
 /// @brief geometry_msgs/msg/Pose.orientation: geometry_msgs/msg/Quaternion.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgQuaternion field_orientation=Ros2Geometry_msgsMsgQuaternion.init;
 /// @brief Append every canonical field of geometry_msgs/msg/Pose.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_position.writeFields(w)) return false;
  if(!this.field_orientation.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Pose.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgPose value) {
  value=Ros2Geometry_msgsMsgPose.init;
  if(!Ros2Geometry_msgsMsgPoint.readFields(r,arena,value.field_position)) return false;
  if(!Ros2Geometry_msgsMsgQuaternion.readFields(r,arena,value.field_orientation)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Pose value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Pose value.
 /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPose; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgPose value) {
  if(bytes.length<56 || bytes.length>56) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/PoseStamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 68..196 bytes and
/// is identified by UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Geometry_msgsMsgPoseStamped {
 /// @brief Maximum canonical extent of geometry_msgs/msg/PoseStamped in bytes.
 /// @details The inclusive bound is 196 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=196;
 /// @brief Canonical codec identity of geometry_msgs/msg/PoseStamped.
 /// @details Exact identity UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2";
 /// @brief Original ROS type name for geometry_msgs/msg/PoseStamped.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/msg/PoseStamped";
 /// @brief Selected original native identity for geometry_msgs/msg/PoseStamped.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/PoseStamped.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/d/API-CONTRACT.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief geometry_msgs/msg/PoseStamped.pose: geometry_msgs/msg/Pose.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgPose field_pose=Ros2Geometry_msgsMsgPose.init;
 /// @brief Append every canonical field of geometry_msgs/msg/PoseStamped.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_pose.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/PoseStamped.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgPoseStamped value) {
  value=Ros2Geometry_msgsMsgPoseStamped.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Geometry_msgsMsgPose.readFields(r,arena,value.field_pose)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/PoseStamped value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/PoseStamped value.
 /// @details Require the complete 68..196-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgPoseStamped value) {
  if(bytes.length<68 || bytes.length>196) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Twist value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
/// is identified by UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Geometry_msgsMsgTwist {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Twist in bytes.
 /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=48;
 /// @brief Canonical codec identity of geometry_msgs/msg/Twist.
 /// @details Exact identity UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
 /// @brief Original ROS type name for geometry_msgs/msg/Twist.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/msg/Twist";
 /// @brief Selected original native identity for geometry_msgs/msg/Twist.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Twist.linear: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgVector3 field_linear=Ros2Geometry_msgsMsgVector3.init;
 /// @brief geometry_msgs/msg/Twist.angular: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgVector3 field_angular=Ros2Geometry_msgsMsgVector3.init;
 /// @brief Append every canonical field of geometry_msgs/msg/Twist.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_linear.writeFields(w)) return false;
  if(!this.field_angular.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Twist.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgTwist value) {
  value=Ros2Geometry_msgsMsgTwist.init;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_linear)) return false;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_angular)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Twist value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Twist value.
 /// @details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgTwist value) {
  if(bytes.length<48 || bytes.length>48) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/TwistStamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 60..188 bytes and
/// is identified by UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Geometry_msgsMsgTwistStamped {
 /// @brief Maximum canonical extent of geometry_msgs/msg/TwistStamped in bytes.
 /// @details The inclusive bound is 188 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=188;
 /// @brief Canonical codec identity of geometry_msgs/msg/TwistStamped.
 /// @details Exact identity UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573";
 /// @brief Original ROS type name for geometry_msgs/msg/TwistStamped.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/msg/TwistStamped";
 /// @brief Selected original native identity for geometry_msgs/msg/TwistStamped.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/TwistStamped.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/d/API-CONTRACT.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief geometry_msgs/msg/TwistStamped.twist: geometry_msgs/msg/Twist.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgTwist field_twist=Ros2Geometry_msgsMsgTwist.init;
 /// @brief Append every canonical field of geometry_msgs/msg/TwistStamped.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_twist.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/TwistStamped.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgTwistStamped value) {
  value=Ros2Geometry_msgsMsgTwistStamped.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Geometry_msgsMsgTwist.readFields(r,arena,value.field_twist)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/TwistStamped value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/TwistStamped value.
 /// @details Require the complete 60..188-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgTwistStamped value) {
  if(bytes.length<60 || bytes.length>188) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Accel value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
/// is identified by UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Geometry_msgsMsgAccel {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Accel in bytes.
 /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=48;
 /// @brief Canonical codec identity of geometry_msgs/msg/Accel.
 /// @details Exact identity UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde";
 /// @brief Original ROS type name for geometry_msgs/msg/Accel.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/msg/Accel";
 /// @brief Selected original native identity for geometry_msgs/msg/Accel.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Accel.linear: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgVector3 field_linear=Ros2Geometry_msgsMsgVector3.init;
 /// @brief geometry_msgs/msg/Accel.angular: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgVector3 field_angular=Ros2Geometry_msgsMsgVector3.init;
 /// @brief Append every canonical field of geometry_msgs/msg/Accel.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_linear.writeFields(w)) return false;
  if(!this.field_angular.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Accel.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgAccel value) {
  value=Ros2Geometry_msgsMsgAccel.init;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_linear)) return false;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_angular)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Accel value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Accel value.
 /// @details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgAccel value) {
  if(bytes.length<48 || bytes.length>48) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/AccelStamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 60..188 bytes and
/// is identified by UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Geometry_msgsMsgAccelStamped {
 /// @brief Maximum canonical extent of geometry_msgs/msg/AccelStamped in bytes.
 /// @details The inclusive bound is 188 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=188;
 /// @brief Canonical codec identity of geometry_msgs/msg/AccelStamped.
 /// @details Exact identity UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899";
 /// @brief Original ROS type name for geometry_msgs/msg/AccelStamped.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/msg/AccelStamped";
 /// @brief Selected original native identity for geometry_msgs/msg/AccelStamped.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/AccelStamped.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/d/API-CONTRACT.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief geometry_msgs/msg/AccelStamped.accel: geometry_msgs/msg/Accel.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgAccel field_accel=Ros2Geometry_msgsMsgAccel.init;
 /// @brief Append every canonical field of geometry_msgs/msg/AccelStamped.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_accel.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/AccelStamped.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgAccelStamped value) {
  value=Ros2Geometry_msgsMsgAccelStamped.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Geometry_msgsMsgAccel.readFields(r,arena,value.field_accel)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/AccelStamped value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/AccelStamped value.
 /// @details Require the complete 60..188-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgAccelStamped value) {
  if(bytes.length<60 || bytes.length>188) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Vector3Stamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 36..164 bytes and
/// is identified by UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Geometry_msgsMsgVector3Stamped {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Vector3Stamped in bytes.
 /// @details The inclusive bound is 164 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=164;
 /// @brief Canonical codec identity of geometry_msgs/msg/Vector3Stamped.
 /// @details Exact identity UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b";
 /// @brief Original ROS type name for geometry_msgs/msg/Vector3Stamped.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/msg/Vector3Stamped";
 /// @brief Selected original native identity for geometry_msgs/msg/Vector3Stamped.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Vector3Stamped.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/d/API-CONTRACT.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief geometry_msgs/msg/Vector3Stamped.vector: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgVector3 field_vector=Ros2Geometry_msgsMsgVector3.init;
 /// @brief Append every canonical field of geometry_msgs/msg/Vector3Stamped.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_vector.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Vector3Stamped.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgVector3Stamped value) {
  value=Ros2Geometry_msgsMsgVector3Stamped.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_vector)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Vector3Stamped value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Vector3Stamped value.
 /// @details Require the complete 36..164-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgVector3Stamped value) {
  if(bytes.length<36 || bytes.length>164) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/msg/FrankaRobotState value.
/// @details All 29 declared fields are retained in source order. The canonical representation occupies 1961..10169
/// bytes and is identified by UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsMsgFrankaRobotState {
 /// @brief Maximum canonical extent of franka_msgs/msg/FrankaRobotState in bytes.
 /// @details The inclusive bound is 10169 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=10169;
 /// @brief Canonical codec identity of franka_msgs/msg/FrankaRobotState.
 /// @details Exact identity UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282";
 /// @brief Original ROS type name for franka_msgs/msg/FrankaRobotState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/msg/FrankaRobotState";
 /// @brief Selected original native identity for franka_msgs/msg/FrankaRobotState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/msg/FrankaRobotState.ROBOT_MODE_OTHER: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_MODE_OTHER=0;
 /// @brief franka_msgs/msg/FrankaRobotState.ROBOT_MODE_IDLE: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_MODE_IDLE=1;
 /// @brief franka_msgs/msg/FrankaRobotState.ROBOT_MODE_MOVE: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_MODE_MOVE=2;
 /// @brief franka_msgs/msg/FrankaRobotState.ROBOT_MODE_GUIDING: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_MODE_GUIDING=3;
 /// @brief franka_msgs/msg/FrankaRobotState.ROBOT_MODE_REFLEX: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_MODE_REFLEX=4;
 /// @brief franka_msgs/msg/FrankaRobotState.ROBOT_MODE_USER_STOPPED: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_MODE_USER_STOPPED=5;
 /// @brief franka_msgs/msg/FrankaRobotState.ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY: original uint8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY=6;
 /// @brief franka_msgs/msg/FrankaRobotState.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief franka_msgs/msg/FrankaRobotState.collision_indicators: franka_msgs/msg/CollisionIndicators.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Franka_msgsMsgCollisionIndicators field_collision_indicators=Ros2Franka_msgsMsgCollisionIndicators.init;
 /// @brief franka_msgs/msg/FrankaRobotState.measured_joint_state: sensor_msgs/msg/JointState.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Sensor_msgsMsgJointState field_measured_joint_state=Ros2Sensor_msgsMsgJointState.init;
 /// @brief franka_msgs/msg/FrankaRobotState.desired_joint_state: sensor_msgs/msg/JointState.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Sensor_msgsMsgJointState field_desired_joint_state=Ros2Sensor_msgsMsgJointState.init;
 /// @brief franka_msgs/msg/FrankaRobotState.measured_joint_motor_state: sensor_msgs/msg/JointState.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Sensor_msgsMsgJointState field_measured_joint_motor_state=Ros2Sensor_msgsMsgJointState.init;
 /// @brief franka_msgs/msg/FrankaRobotState.ddq_d: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_ddq_d=0;
 /// @brief franka_msgs/msg/FrankaRobotState.dtau_j: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_dtau_j=0;
 /// @brief franka_msgs/msg/FrankaRobotState.tau_ext_hat_filtered: sensor_msgs/msg/JointState.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Sensor_msgsMsgJointState field_tau_ext_hat_filtered=Ros2Sensor_msgsMsgJointState.init;
 /// @brief franka_msgs/msg/FrankaRobotState.elbow: franka_msgs/msg/Elbow.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Franka_msgsMsgElbow field_elbow=Ros2Franka_msgsMsgElbow.init;
 /// @brief franka_msgs/msg/FrankaRobotState.k_f_ext_hat_k: geometry_msgs/msg/WrenchStamped.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgWrenchStamped field_k_f_ext_hat_k=Ros2Geometry_msgsMsgWrenchStamped.init;
 /// @brief franka_msgs/msg/FrankaRobotState.o_f_ext_hat_k: geometry_msgs/msg/WrenchStamped.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgWrenchStamped field_o_f_ext_hat_k=Ros2Geometry_msgsMsgWrenchStamped.init;
 /// @brief franka_msgs/msg/FrankaRobotState.inertia_ee: geometry_msgs/msg/InertiaStamped.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgInertiaStamped field_inertia_ee=Ros2Geometry_msgsMsgInertiaStamped.init;
 /// @brief franka_msgs/msg/FrankaRobotState.inertia_load: geometry_msgs/msg/InertiaStamped.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgInertiaStamped field_inertia_load=Ros2Geometry_msgsMsgInertiaStamped.init;
 /// @brief franka_msgs/msg/FrankaRobotState.inertia_total: geometry_msgs/msg/InertiaStamped.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgInertiaStamped field_inertia_total=Ros2Geometry_msgsMsgInertiaStamped.init;
 /// @brief franka_msgs/msg/FrankaRobotState.o_t_ee: geometry_msgs/msg/PoseStamped.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgPoseStamped field_o_t_ee=Ros2Geometry_msgsMsgPoseStamped.init;
 /// @brief franka_msgs/msg/FrankaRobotState.o_t_ee_d: geometry_msgs/msg/PoseStamped.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgPoseStamped field_o_t_ee_d=Ros2Geometry_msgsMsgPoseStamped.init;
 /// @brief franka_msgs/msg/FrankaRobotState.o_t_ee_c: geometry_msgs/msg/PoseStamped.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgPoseStamped field_o_t_ee_c=Ros2Geometry_msgsMsgPoseStamped.init;
 /// @brief franka_msgs/msg/FrankaRobotState.f_t_ee: geometry_msgs/msg/PoseStamped.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgPoseStamped field_f_t_ee=Ros2Geometry_msgsMsgPoseStamped.init;
 /// @brief franka_msgs/msg/FrankaRobotState.ee_t_k: geometry_msgs/msg/PoseStamped.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgPoseStamped field_ee_t_k=Ros2Geometry_msgsMsgPoseStamped.init;
 /// @brief franka_msgs/msg/FrankaRobotState.o_dp_ee_d: geometry_msgs/msg/TwistStamped.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgTwistStamped field_o_dp_ee_d=Ros2Geometry_msgsMsgTwistStamped.init;
 /// @brief franka_msgs/msg/FrankaRobotState.o_dp_ee_c: geometry_msgs/msg/TwistStamped.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgTwistStamped field_o_dp_ee_c=Ros2Geometry_msgsMsgTwistStamped.init;
 /// @brief franka_msgs/msg/FrankaRobotState.o_ddp_ee_c: geometry_msgs/msg/AccelStamped.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgAccelStamped field_o_ddp_ee_c=Ros2Geometry_msgsMsgAccelStamped.init;
 /// @brief franka_msgs/msg/FrankaRobotState.time: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 double field_time=0;
 /// @brief franka_msgs/msg/FrankaRobotState.control_command_success_rate: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 double field_control_command_success_rate=0;
 /// @brief franka_msgs/msg/FrankaRobotState.robot_mode: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 ubyte field_robot_mode=0;
 /// @brief franka_msgs/msg/FrankaRobotState.current_errors: franka_msgs/msg/Errors.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Franka_msgsMsgErrors field_current_errors=Ros2Franka_msgsMsgErrors.init;
 /// @brief franka_msgs/msg/FrankaRobotState.last_motion_errors: franka_msgs/msg/Errors.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Franka_msgsMsgErrors field_last_motion_errors=Ros2Franka_msgsMsgErrors.init;
 /// @brief franka_msgs/msg/FrankaRobotState.accelerometer_top: geometry_msgs/msg/Vector3Stamped; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgVector3Stamped[6] field_accelerometer_top=Ros2Geometry_msgsMsgVector3Stamped.init;
 /// @brief franka_msgs/msg/FrankaRobotState.accelerometer_bottom: geometry_msgs/msg/Vector3Stamped; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 Ros2Geometry_msgsMsgVector3Stamped[6] field_accelerometer_bottom=Ros2Geometry_msgsMsgVector3Stamped.init;
 /// @brief Append every canonical field of franka_msgs/msg/FrankaRobotState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_collision_indicators.writeFields(w)) return false;
  if(!this.field_measured_joint_state.writeFields(w)) return false;
  if(!this.field_desired_joint_state.writeFields(w)) return false;
  if(!this.field_measured_joint_motor_state.writeFields(w)) return false;
  foreach(ref e; this.field_ddq_d) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_dtau_j) {
  if(!w.float64(e)) return false;
  }
  if(!this.field_tau_ext_hat_filtered.writeFields(w)) return false;
  if(!this.field_elbow.writeFields(w)) return false;
  if(!this.field_k_f_ext_hat_k.writeFields(w)) return false;
  if(!this.field_o_f_ext_hat_k.writeFields(w)) return false;
  if(!this.field_inertia_ee.writeFields(w)) return false;
  if(!this.field_inertia_load.writeFields(w)) return false;
  if(!this.field_inertia_total.writeFields(w)) return false;
  if(!this.field_o_t_ee.writeFields(w)) return false;
  if(!this.field_o_t_ee_d.writeFields(w)) return false;
  if(!this.field_o_t_ee_c.writeFields(w)) return false;
  if(!this.field_f_t_ee.writeFields(w)) return false;
  if(!this.field_ee_t_k.writeFields(w)) return false;
  if(!this.field_o_dp_ee_d.writeFields(w)) return false;
  if(!this.field_o_dp_ee_c.writeFields(w)) return false;
  if(!this.field_o_ddp_ee_c.writeFields(w)) return false;
  if(!w.float64(this.field_time)) return false;
  if(!w.float64(this.field_control_command_success_rate)) return false;
  if(!w.integer(this.field_robot_mode)) return false;
  if(!this.field_current_errors.writeFields(w)) return false;
  if(!this.field_last_motion_errors.writeFields(w)) return false;
  foreach(ref e; this.field_accelerometer_top) {
  if(!e.writeFields(w)) return false;
  }
  foreach(ref e; this.field_accelerometer_bottom) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/msg/FrankaRobotState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsMsgFrankaRobotState value) {
  value=Ros2Franka_msgsMsgFrankaRobotState.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Franka_msgsMsgCollisionIndicators.readFields(r,arena,value.field_collision_indicators)) return false;
  if(!Ros2Sensor_msgsMsgJointState.readFields(r,arena,value.field_measured_joint_state)) return false;
  if(!Ros2Sensor_msgsMsgJointState.readFields(r,arena,value.field_desired_joint_state)) return false;
  if(!Ros2Sensor_msgsMsgJointState.readFields(r,arena,value.field_measured_joint_motor_state)) return false;
  foreach(ref e; value.field_ddq_d) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_dtau_j) {
  if(!r.float64(e)) return false;
  }
  if(!Ros2Sensor_msgsMsgJointState.readFields(r,arena,value.field_tau_ext_hat_filtered)) return false;
  if(!Ros2Franka_msgsMsgElbow.readFields(r,arena,value.field_elbow)) return false;
  if(!Ros2Geometry_msgsMsgWrenchStamped.readFields(r,arena,value.field_k_f_ext_hat_k)) return false;
  if(!Ros2Geometry_msgsMsgWrenchStamped.readFields(r,arena,value.field_o_f_ext_hat_k)) return false;
  if(!Ros2Geometry_msgsMsgInertiaStamped.readFields(r,arena,value.field_inertia_ee)) return false;
  if(!Ros2Geometry_msgsMsgInertiaStamped.readFields(r,arena,value.field_inertia_load)) return false;
  if(!Ros2Geometry_msgsMsgInertiaStamped.readFields(r,arena,value.field_inertia_total)) return false;
  if(!Ros2Geometry_msgsMsgPoseStamped.readFields(r,arena,value.field_o_t_ee)) return false;
  if(!Ros2Geometry_msgsMsgPoseStamped.readFields(r,arena,value.field_o_t_ee_d)) return false;
  if(!Ros2Geometry_msgsMsgPoseStamped.readFields(r,arena,value.field_o_t_ee_c)) return false;
  if(!Ros2Geometry_msgsMsgPoseStamped.readFields(r,arena,value.field_f_t_ee)) return false;
  if(!Ros2Geometry_msgsMsgPoseStamped.readFields(r,arena,value.field_ee_t_k)) return false;
  if(!Ros2Geometry_msgsMsgTwistStamped.readFields(r,arena,value.field_o_dp_ee_d)) return false;
  if(!Ros2Geometry_msgsMsgTwistStamped.readFields(r,arena,value.field_o_dp_ee_c)) return false;
  if(!Ros2Geometry_msgsMsgAccelStamped.readFields(r,arena,value.field_o_ddp_ee_c)) return false;
  if(!r.float64(value.field_time)) return false;
  if(!r.float64(value.field_control_command_success_rate)) return false;
  if(!r.integer(value.field_robot_mode)) return false;
  if(!Ros2Franka_msgsMsgErrors.readFields(r,arena,value.field_current_errors)) return false;
  if(!Ros2Franka_msgsMsgErrors.readFields(r,arena,value.field_last_motion_errors)) return false;
  foreach(ref e; value.field_accelerometer_top) {
  if(!Ros2Geometry_msgsMsgVector3Stamped.readFields(r,arena,e)) return false;
  }
  foreach(ref e; value.field_accelerometer_bottom) {
  if(!Ros2Geometry_msgsMsgVector3Stamped.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/msg/FrankaRobotState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/msg/FrankaRobotState value.
 /// @details Require the complete 1961..10169-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsMsgFrankaRobotState value) {
  if(bytes.length<1961 || bytes.length>10169) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/srv/SetCartesianStiffness_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
/// is identified by UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsSrvSetCartesianStiffness_Request {
 /// @brief Maximum canonical extent of franka_msgs/srv/SetCartesianStiffness_Request in bytes.
 /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=48;
 /// @brief Canonical codec identity of franka_msgs/srv/SetCartesianStiffness_Request.
 /// @details Exact identity UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260";
 /// @brief Original ROS type name for franka_msgs/srv/SetCartesianStiffness_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/srv/SetCartesianStiffness_Request";
 /// @brief Selected original native identity for franka_msgs/srv/SetCartesianStiffness_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/srv/SetCartesianStiffness_Request.cartesian_stiffness: float64; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 double[6] field_cartesian_stiffness=0;
 /// @brief Append every canonical field of franka_msgs/srv/SetCartesianStiffness_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  foreach(ref e; this.field_cartesian_stiffness) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/srv/SetCartesianStiffness_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsSrvSetCartesianStiffness_Request value) {
  value=Ros2Franka_msgsSrvSetCartesianStiffness_Request.init;
  foreach(ref e; value.field_cartesian_stiffness) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/srv/SetCartesianStiffness_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/srv/SetCartesianStiffness_Request value.
 /// @details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsSrvSetCartesianStiffness_Request value) {
  if(bytes.length<48 || bytes.length>48) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/srv/SetCartesianStiffness_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsSrvSetCartesianStiffness_Response {
 /// @brief Maximum canonical extent of franka_msgs/srv/SetCartesianStiffness_Response in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/srv/SetCartesianStiffness_Response.
 /// @details Exact identity UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa";
 /// @brief Original ROS type name for franka_msgs/srv/SetCartesianStiffness_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/srv/SetCartesianStiffness_Response";
 /// @brief Selected original native identity for franka_msgs/srv/SetCartesianStiffness_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/srv/SetCartesianStiffness_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/srv/SetCartesianStiffness_Response.error: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/srv/SetCartesianStiffness_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/srv/SetCartesianStiffness_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsSrvSetCartesianStiffness_Response value) {
  value=Ros2Franka_msgsSrvSetCartesianStiffness_Response.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/srv/SetCartesianStiffness_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/srv/SetCartesianStiffness_Response value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsSrvSetCartesianStiffness_Response value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/srv/SetForceTorqueCollisionBehavior_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 208..208 bytes
/// and is identified by UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request {
 /// @brief Maximum canonical extent of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request in bytes.
 /// @details The inclusive bound is 208 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=208;
 /// @brief Canonical codec identity of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
 /// @details Exact identity UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c";
 /// @brief Original ROS type name for franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/srv/SetForceTorqueCollisionBehavior_Request";
 /// @brief Selected original native identity for franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_torque_thresholds_nominal: float64; exactly 7
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 double[7] field_lower_torque_thresholds_nominal=0;
 /// @brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_torque_thresholds_nominal: float64; exactly 7
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 double[7] field_upper_torque_thresholds_nominal=0;
 /// @brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_force_thresholds_nominal: float64; exactly 6
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 double[6] field_lower_force_thresholds_nominal=0;
 /// @brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_force_thresholds_nominal: float64; exactly 6
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 double[6] field_upper_force_thresholds_nominal=0;
 /// @brief Append every canonical field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  foreach(ref e; this.field_lower_torque_thresholds_nominal) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_upper_torque_thresholds_nominal) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_lower_force_thresholds_nominal) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_upper_force_thresholds_nominal) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request value) {
  value=Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.init;
  foreach(ref e; value.field_lower_torque_thresholds_nominal) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_upper_torque_thresholds_nominal) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_lower_force_thresholds_nominal) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_upper_force_thresholds_nominal) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/srv/SetForceTorqueCollisionBehavior_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/srv/SetForceTorqueCollisionBehavior_Request value.
 /// @details Require the complete 208..208-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request value) {
  if(bytes.length<208 || bytes.length>208) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/srv/SetForceTorqueCollisionBehavior_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response {
 /// @brief Maximum canonical extent of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
 /// @details Exact identity UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a";
 /// @brief Original ROS type name for franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/srv/SetForceTorqueCollisionBehavior_Response";
 /// @brief Selected original native identity for franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.error: string; each string is 0..256 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response value) {
  value=Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/srv/SetForceTorqueCollisionBehavior_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/srv/SetForceTorqueCollisionBehavior_Response value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/srv/SetFullCollisionBehavior_Request value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies 416..416 bytes
/// and is identified by UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsSrvSetFullCollisionBehavior_Request {
 /// @brief Maximum canonical extent of franka_msgs/srv/SetFullCollisionBehavior_Request in bytes.
 /// @details The inclusive bound is 416 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=416;
 /// @brief Canonical codec identity of franka_msgs/srv/SetFullCollisionBehavior_Request.
 /// @details Exact identity UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824";
 /// @brief Original ROS type name for franka_msgs/srv/SetFullCollisionBehavior_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/srv/SetFullCollisionBehavior_Request";
 /// @brief Selected original native identity for franka_msgs/srv/SetFullCollisionBehavior_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_acceleration: float64; exactly 7
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 double[7] field_lower_torque_thresholds_acceleration=0;
 /// @brief franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_acceleration: float64; exactly 7
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 double[7] field_upper_torque_thresholds_acceleration=0;
 /// @brief franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_nominal: float64; exactly 7
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 double[7] field_lower_torque_thresholds_nominal=0;
 /// @brief franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_nominal: float64; exactly 7
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 double[7] field_upper_torque_thresholds_nominal=0;
 /// @brief franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_acceleration: float64; exactly 6
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 double[6] field_lower_force_thresholds_acceleration=0;
 /// @brief franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_acceleration: float64; exactly 6
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 double[6] field_upper_force_thresholds_acceleration=0;
 /// @brief franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_nominal: float64; exactly 6
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 double[6] field_lower_force_thresholds_nominal=0;
 /// @brief franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_nominal: float64; exactly 6
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 double[6] field_upper_force_thresholds_nominal=0;
 /// @brief Append every canonical field of franka_msgs/srv/SetFullCollisionBehavior_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  foreach(ref e; this.field_lower_torque_thresholds_acceleration) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_upper_torque_thresholds_acceleration) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_lower_torque_thresholds_nominal) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_upper_torque_thresholds_nominal) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_lower_force_thresholds_acceleration) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_upper_force_thresholds_acceleration) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_lower_force_thresholds_nominal) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_upper_force_thresholds_nominal) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/srv/SetFullCollisionBehavior_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsSrvSetFullCollisionBehavior_Request value) {
  value=Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.init;
  foreach(ref e; value.field_lower_torque_thresholds_acceleration) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_upper_torque_thresholds_acceleration) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_lower_torque_thresholds_nominal) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_upper_torque_thresholds_nominal) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_lower_force_thresholds_acceleration) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_upper_force_thresholds_acceleration) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_lower_force_thresholds_nominal) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_upper_force_thresholds_nominal) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/srv/SetFullCollisionBehavior_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/srv/SetFullCollisionBehavior_Request value.
 /// @details Require the complete 416..416-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsSrvSetFullCollisionBehavior_Request value) {
  if(bytes.length<416 || bytes.length>416) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/srv/SetFullCollisionBehavior_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsSrvSetFullCollisionBehavior_Response {
 /// @brief Maximum canonical extent of franka_msgs/srv/SetFullCollisionBehavior_Response in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/srv/SetFullCollisionBehavior_Response.
 /// @details Exact identity UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300";
 /// @brief Original ROS type name for franka_msgs/srv/SetFullCollisionBehavior_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/srv/SetFullCollisionBehavior_Response";
 /// @brief Selected original native identity for franka_msgs/srv/SetFullCollisionBehavior_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/srv/SetFullCollisionBehavior_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/srv/SetFullCollisionBehavior_Response.error: string; each string is 0..256 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/srv/SetFullCollisionBehavior_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/srv/SetFullCollisionBehavior_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsSrvSetFullCollisionBehavior_Response value) {
  value=Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/srv/SetFullCollisionBehavior_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/srv/SetFullCollisionBehavior_Response value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsSrvSetFullCollisionBehavior_Response value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/srv/SetJointStiffness_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 56..56 bytes and
/// is identified by UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsSrvSetJointStiffness_Request {
 /// @brief Maximum canonical extent of franka_msgs/srv/SetJointStiffness_Request in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=56;
 /// @brief Canonical codec identity of franka_msgs/srv/SetJointStiffness_Request.
 /// @details Exact identity UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c";
 /// @brief Original ROS type name for franka_msgs/srv/SetJointStiffness_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/srv/SetJointStiffness_Request";
 /// @brief Selected original native identity for franka_msgs/srv/SetJointStiffness_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/srv/SetJointStiffness_Request.joint_stiffness: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 double[7] field_joint_stiffness=0;
 /// @brief Append every canonical field of franka_msgs/srv/SetJointStiffness_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  foreach(ref e; this.field_joint_stiffness) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/srv/SetJointStiffness_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsSrvSetJointStiffness_Request value) {
  value=Ros2Franka_msgsSrvSetJointStiffness_Request.init;
  foreach(ref e; value.field_joint_stiffness) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/srv/SetJointStiffness_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/srv/SetJointStiffness_Request value.
 /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsSrvSetJointStiffness_Request value) {
  if(bytes.length<56 || bytes.length>56) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/srv/SetJointStiffness_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsSrvSetJointStiffness_Response {
 /// @brief Maximum canonical extent of franka_msgs/srv/SetJointStiffness_Response in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/srv/SetJointStiffness_Response.
 /// @details Exact identity UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d";
 /// @brief Original ROS type name for franka_msgs/srv/SetJointStiffness_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/srv/SetJointStiffness_Response";
 /// @brief Selected original native identity for franka_msgs/srv/SetJointStiffness_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/srv/SetJointStiffness_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/srv/SetJointStiffness_Response.error: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/srv/SetJointStiffness_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/srv/SetJointStiffness_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsSrvSetJointStiffness_Response value) {
  value=Ros2Franka_msgsSrvSetJointStiffness_Response.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/srv/SetJointStiffness_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/srv/SetJointStiffness_Response value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsSrvSetJointStiffness_Response value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/srv/SetLoad_Request value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 104..104 bytes
/// and is identified by UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsSrvSetLoad_Request {
 /// @brief Maximum canonical extent of franka_msgs/srv/SetLoad_Request in bytes.
 /// @details The inclusive bound is 104 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=104;
 /// @brief Canonical codec identity of franka_msgs/srv/SetLoad_Request.
 /// @details Exact identity UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8";
 /// @brief Original ROS type name for franka_msgs/srv/SetLoad_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/srv/SetLoad_Request";
 /// @brief Selected original native identity for franka_msgs/srv/SetLoad_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/srv/SetLoad_Request.mass: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/d/API-CONTRACT.md
 double field_mass=0;
 /// @brief franka_msgs/srv/SetLoad_Request.center_of_mass: float64; exactly 3 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/d/API-CONTRACT.md
 double[3] field_center_of_mass=0;
 /// @brief franka_msgs/srv/SetLoad_Request.load_inertia: float64; exactly 9 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/d/API-CONTRACT.md
 double[9] field_load_inertia=0;
 /// @brief Append every canonical field of franka_msgs/srv/SetLoad_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_mass)) return false;
  foreach(ref e; this.field_center_of_mass) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_load_inertia) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/srv/SetLoad_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsSrvSetLoad_Request value) {
  value=Ros2Franka_msgsSrvSetLoad_Request.init;
  if(!r.float64(value.field_mass)) return false;
  foreach(ref e; value.field_center_of_mass) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_load_inertia) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/srv/SetLoad_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/srv/SetLoad_Request value.
 /// @details Require the complete 104..104-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsSrvSetLoad_Request value) {
  if(bytes.length<104 || bytes.length>104) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/srv/SetLoad_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsSrvSetLoad_Response {
 /// @brief Maximum canonical extent of franka_msgs/srv/SetLoad_Response in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/srv/SetLoad_Response.
 /// @details Exact identity UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf";
 /// @brief Original ROS type name for franka_msgs/srv/SetLoad_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/srv/SetLoad_Response";
 /// @brief Selected original native identity for franka_msgs/srv/SetLoad_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/srv/SetLoad_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/srv/SetLoad_Response.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 /// NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/srv/SetLoad_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/srv/SetLoad_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsSrvSetLoad_Response value) {
  value=Ros2Franka_msgsSrvSetLoad_Response.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/srv/SetLoad_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/srv/SetLoad_Response value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsSrvSetLoad_Response value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/srv/SetStiffnessFrame_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 128..128 bytes
/// and is identified by UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsSrvSetStiffnessFrame_Request {
 /// @brief Maximum canonical extent of franka_msgs/srv/SetStiffnessFrame_Request in bytes.
 /// @details The inclusive bound is 128 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=128;
 /// @brief Canonical codec identity of franka_msgs/srv/SetStiffnessFrame_Request.
 /// @details Exact identity UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402";
 /// @brief Original ROS type name for franka_msgs/srv/SetStiffnessFrame_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/srv/SetStiffnessFrame_Request";
 /// @brief Selected original native identity for franka_msgs/srv/SetStiffnessFrame_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/srv/SetStiffnessFrame_Request.transformation: float64; exactly 16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/d/API-CONTRACT.md
 double[16] field_transformation=0;
 /// @brief Append every canonical field of franka_msgs/srv/SetStiffnessFrame_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  foreach(ref e; this.field_transformation) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/srv/SetStiffnessFrame_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsSrvSetStiffnessFrame_Request value) {
  value=Ros2Franka_msgsSrvSetStiffnessFrame_Request.init;
  foreach(ref e; value.field_transformation) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/srv/SetStiffnessFrame_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/srv/SetStiffnessFrame_Request value.
 /// @details Require the complete 128..128-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsSrvSetStiffnessFrame_Request value) {
  if(bytes.length<128 || bytes.length>128) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/srv/SetStiffnessFrame_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsSrvSetStiffnessFrame_Response {
 /// @brief Maximum canonical extent of franka_msgs/srv/SetStiffnessFrame_Response in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/srv/SetStiffnessFrame_Response.
 /// @details Exact identity UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744";
 /// @brief Original ROS type name for franka_msgs/srv/SetStiffnessFrame_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/srv/SetStiffnessFrame_Response";
 /// @brief Selected original native identity for franka_msgs/srv/SetStiffnessFrame_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/srv/SetStiffnessFrame_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/srv/SetStiffnessFrame_Response.error: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/srv/SetStiffnessFrame_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/srv/SetStiffnessFrame_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsSrvSetStiffnessFrame_Response value) {
  value=Ros2Franka_msgsSrvSetStiffnessFrame_Response.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/srv/SetStiffnessFrame_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/srv/SetStiffnessFrame_Response value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsSrvSetStiffnessFrame_Response value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/srv/SetTCPFrame_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 128..128 bytes
/// and is identified by UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsSrvSetTCPFrame_Request {
 /// @brief Maximum canonical extent of franka_msgs/srv/SetTCPFrame_Request in bytes.
 /// @details The inclusive bound is 128 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=128;
 /// @brief Canonical codec identity of franka_msgs/srv/SetTCPFrame_Request.
 /// @details Exact identity UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f";
 /// @brief Original ROS type name for franka_msgs/srv/SetTCPFrame_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/srv/SetTCPFrame_Request";
 /// @brief Selected original native identity for franka_msgs/srv/SetTCPFrame_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/srv/SetTCPFrame_Request.transformation: float64; exactly 16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/d/API-CONTRACT.md
 double[16] field_transformation=0;
 /// @brief Append every canonical field of franka_msgs/srv/SetTCPFrame_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  foreach(ref e; this.field_transformation) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/srv/SetTCPFrame_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsSrvSetTCPFrame_Request value) {
  value=Ros2Franka_msgsSrvSetTCPFrame_Request.init;
  foreach(ref e; value.field_transformation) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/srv/SetTCPFrame_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/srv/SetTCPFrame_Request value.
 /// @details Require the complete 128..128-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsSrvSetTCPFrame_Request value) {
  if(bytes.length<128 || bytes.length>128) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_msgs/srv/SetTCPFrame_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_msgsSrvSetTCPFrame_Response {
 /// @brief Maximum canonical extent of franka_msgs/srv/SetTCPFrame_Response in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/srv/SetTCPFrame_Response.
 /// @details Exact identity UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38";
 /// @brief Original ROS type name for franka_msgs/srv/SetTCPFrame_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/srv/SetTCPFrame_Response";
 /// @brief Selected original native identity for franka_msgs/srv/SetTCPFrame_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/srv/SetTCPFrame_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/srv/SetTCPFrame_Response.error: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/srv/SetTCPFrame_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/srv/SetTCPFrame_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_msgsSrvSetTCPFrame_Response value) {
  value=Ros2Franka_msgsSrvSetTCPFrame_Response.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/srv/SetTCPFrame_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/srv/SetTCPFrame_Response value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_msgsSrvSetTCPFrame_Response value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/action/MoveAbsolute_Goal value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes and
/// is identified by UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsActionMoveAbsolute_Goal {
 /// @brief Maximum canonical extent of franka_spine_msgs/action/MoveAbsolute_Goal in bytes.
 /// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=32;
 /// @brief Canonical codec identity of franka_spine_msgs/action/MoveAbsolute_Goal.
 /// @details Exact identity UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13";
 /// @brief Original ROS type name for franka_spine_msgs/action/MoveAbsolute_Goal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/action/MoveAbsolute_Goal";
 /// @brief Selected original native identity for franka_spine_msgs/action/MoveAbsolute_Goal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_spine_msgs/action/MoveAbsolute_Goal.position: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/d/API-CONTRACT.md
 double field_position=0;
 /// @brief franka_spine_msgs/action/MoveAbsolute_Goal.velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/d/API-CONTRACT.md
 double field_velocity=0;
 /// @brief franka_spine_msgs/action/MoveAbsolute_Goal.acceleration: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/d/API-CONTRACT.md
 double field_acceleration=0;
 /// @brief franka_spine_msgs/action/MoveAbsolute_Goal.deceleration: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/d/API-CONTRACT.md
 double field_deceleration=0;
 /// @brief Append every canonical field of franka_spine_msgs/action/MoveAbsolute_Goal.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_position)) return false;
  if(!w.float64(this.field_velocity)) return false;
  if(!w.float64(this.field_acceleration)) return false;
  if(!w.float64(this.field_deceleration)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/action/MoveAbsolute_Goal.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsActionMoveAbsolute_Goal value) {
  value=Ros2Franka_spine_msgsActionMoveAbsolute_Goal.init;
  if(!r.float64(value.field_position)) return false;
  if(!r.float64(value.field_velocity)) return false;
  if(!r.float64(value.field_acceleration)) return false;
  if(!r.float64(value.field_deceleration)) return false;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/action/MoveAbsolute_Goal value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/action/MoveAbsolute_Goal value.
 /// @details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsActionMoveAbsolute_Goal value) {
  if(bytes.length<32 || bytes.length>32) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/action/MoveAbsolute_Result value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes and
/// is identified by UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsActionMoveAbsolute_Result {
 /// @brief Maximum canonical extent of franka_spine_msgs/action/MoveAbsolute_Result in bytes.
 /// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=521;
 /// @brief Canonical codec identity of franka_spine_msgs/action/MoveAbsolute_Result.
 /// @details Exact identity UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5";
 /// @brief Original ROS type name for franka_spine_msgs/action/MoveAbsolute_Result.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/action/MoveAbsolute_Result";
 /// @brief Selected original native identity for franka_spine_msgs/action/MoveAbsolute_Result.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_spine_msgs/action/MoveAbsolute_Result.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_spine_msgs/action/MoveAbsolute_Result.stop_by: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_stop_by=null;
 /// @brief franka_spine_msgs/action/MoveAbsolute_Result.error: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_spine_msgs/action/MoveAbsolute_Result.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_stop_by,256)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/action/MoveAbsolute_Result.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsActionMoveAbsolute_Result value) {
  value=Ros2Franka_spine_msgsActionMoveAbsolute_Result.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_stop_by,256)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/action/MoveAbsolute_Result value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/action/MoveAbsolute_Result value.
 /// @details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsActionMoveAbsolute_Result value) {
  if(bytes.length<9 || bytes.length>521) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/action/MoveAbsolute_Feedback value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
/// identified by UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsActionMoveAbsolute_Feedback {
 /// @brief Maximum canonical extent of franka_spine_msgs/action/MoveAbsolute_Feedback in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of franka_spine_msgs/action/MoveAbsolute_Feedback.
 /// @details Exact identity UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929";
 /// @brief Original ROS type name for franka_spine_msgs/action/MoveAbsolute_Feedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/action/MoveAbsolute_Feedback";
 /// @brief Selected original native identity for franka_spine_msgs/action/MoveAbsolute_Feedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_spine_msgs/action/MoveAbsolute_Feedback.current_position: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/d/API-CONTRACT.md
 double field_current_position=0;
 /// @brief Append every canonical field of franka_spine_msgs/action/MoveAbsolute_Feedback.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_current_position)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/action/MoveAbsolute_Feedback.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsActionMoveAbsolute_Feedback value) {
  value=Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.init;
  if(!r.float64(value.field_current_position)) return false;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/action/MoveAbsolute_Feedback value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/action/MoveAbsolute_Feedback value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsActionMoveAbsolute_Feedback value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/msg/UserLimits value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
/// is identified by UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsMsgUserLimits {
 /// @brief Maximum canonical extent of franka_spine_msgs/msg/UserLimits in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of franka_spine_msgs/msg/UserLimits.
 /// @details Exact identity UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368";
 /// @brief Original ROS type name for franka_spine_msgs/msg/UserLimits.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/msg/UserLimits";
 /// @brief Selected original native identity for franka_spine_msgs/msg/UserLimits.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_spine_msgs/msg/UserLimits.lower_limit: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/d/API-CONTRACT.md
 double field_lower_limit=0;
 /// @brief franka_spine_msgs/msg/UserLimits.upper_limit: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/d/API-CONTRACT.md
 double field_upper_limit=0;
 /// @brief Append every canonical field of franka_spine_msgs/msg/UserLimits.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_lower_limit)) return false;
  if(!w.float64(this.field_upper_limit)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/msg/UserLimits.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsMsgUserLimits value) {
  value=Ros2Franka_spine_msgsMsgUserLimits.init;
  if(!r.float64(value.field_lower_limit)) return false;
  if(!r.float64(value.field_upper_limit)) return false;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/msg/UserLimits value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/msg/UserLimits value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsMsgUserLimits value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/msg/SpineParameters value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
/// is identified by UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsMsgSpineParameters {
 /// @brief Maximum canonical extent of franka_spine_msgs/msg/SpineParameters in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of franka_spine_msgs/msg/SpineParameters.
 /// @details Exact identity UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223";
 /// @brief Original ROS type name for franka_spine_msgs/msg/SpineParameters.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/msg/SpineParameters";
 /// @brief Selected original native identity for franka_spine_msgs/msg/SpineParameters.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_spine_msgs/msg/SpineParameters.user_limits: franka_spine_msgs/msg/UserLimits.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/d/API-CONTRACT.md
 Ros2Franka_spine_msgsMsgUserLimits field_user_limits=Ros2Franka_spine_msgsMsgUserLimits.init;
 /// @brief Append every canonical field of franka_spine_msgs/msg/SpineParameters.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_user_limits.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/msg/SpineParameters.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsMsgSpineParameters value) {
  value=Ros2Franka_spine_msgsMsgSpineParameters.init;
  if(!Ros2Franka_spine_msgsMsgUserLimits.readFields(r,arena,value.field_user_limits)) return false;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/msg/SpineParameters value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/msg/SpineParameters value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsMsgSpineParameters value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/msg/SpinePosition value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 21..149 bytes and
/// is identified by UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsMsgSpinePosition {
 /// @brief Maximum canonical extent of franka_spine_msgs/msg/SpinePosition in bytes.
 /// @details The inclusive bound is 149 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=149;
 /// @brief Canonical codec identity of franka_spine_msgs/msg/SpinePosition.
 /// @details Exact identity UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775";
 /// @brief Original ROS type name for franka_spine_msgs/msg/SpinePosition.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/msg/SpinePosition";
 /// @brief Selected original native identity for franka_spine_msgs/msg/SpinePosition.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_spine_msgs/msg/SpinePosition.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/d/API-CONTRACT.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief franka_spine_msgs/msg/SpinePosition.position: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/d/API-CONTRACT.md
 double field_position=0;
 /// @brief franka_spine_msgs/msg/SpinePosition.valid: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/d/API-CONTRACT.md
 bool field_valid=false;
 /// @brief Append every canonical field of franka_spine_msgs/msg/SpinePosition.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.float64(this.field_position)) return false;
  if(!w.boolean(this.field_valid)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/msg/SpinePosition.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsMsgSpinePosition value) {
  value=Ros2Franka_spine_msgsMsgSpinePosition.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.float64(value.field_position)) return false;
  if(!r.boolean(value.field_valid)) return false;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/msg/SpinePosition value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/msg/SpinePosition value.
 /// @details Require the complete 21..149-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsMsgSpinePosition value) {
  if(bytes.length<21 || bytes.length>149) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/msg/SpineState value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 25..921 bytes and
/// is identified by UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsMsgSpineState {
 /// @brief Maximum canonical extent of franka_spine_msgs/msg/SpineState in bytes.
 /// @details The inclusive bound is 921 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=921;
 /// @brief Canonical codec identity of franka_spine_msgs/msg/SpineState.
 /// @details Exact identity UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441";
 /// @brief Original ROS type name for franka_spine_msgs/msg/SpineState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/msg/SpineState";
 /// @brief Selected original native identity for franka_spine_msgs/msg/SpineState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_spine_msgs/msg/SpineState.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/d/API-CONTRACT.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief franka_spine_msgs/msg/SpineState.state: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 /// NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_state=null;
 /// @brief franka_spine_msgs/msg/SpineState.error_code: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error_code=null;
 /// @brief franka_spine_msgs/msg/SpineState.error_description: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error_description=null;
 /// @brief franka_spine_msgs/msg/SpineState.valid: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/d/API-CONTRACT.md
 bool field_valid=false;
 /// @brief Append every canonical field of franka_spine_msgs/msg/SpineState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.text(this.field_state,256)) return false;
  if(!w.text(this.field_error_code,256)) return false;
  if(!w.text(this.field_error_description,256)) return false;
  if(!w.boolean(this.field_valid)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/msg/SpineState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsMsgSpineState value) {
  value=Ros2Franka_spine_msgsMsgSpineState.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.text(value.field_state,256)) return false;
  if(!r.text(value.field_error_code,256)) return false;
  if(!r.text(value.field_error_description,256)) return false;
  if(!r.boolean(value.field_valid)) return false;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/msg/SpineState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/msg/SpineState value.
 /// @details Require the complete 25..921-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsMsgSpineState value) {
  if(bytes.length<25 || bytes.length>921) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/srv/FaultReset_Request value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsSrvFaultReset_Request {
 /// @brief Maximum canonical extent of franka_spine_msgs/srv/FaultReset_Request in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_spine_msgs/srv/FaultReset_Request.
 /// @details Exact identity UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33";
 /// @brief Original ROS type name for franka_spine_msgs/srv/FaultReset_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/srv/FaultReset_Request";
 /// @brief Selected original native identity for franka_spine_msgs/srv/FaultReset_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_spine_msgs/srv/FaultReset_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/srv/FaultReset_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsSrvFaultReset_Request value) {
  value=Ros2Franka_spine_msgsSrvFaultReset_Request.init;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/srv/FaultReset_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/srv/FaultReset_Request value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsSrvFaultReset_Request value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/srv/FaultReset_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes and
/// is identified by UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsSrvFaultReset_Response {
 /// @brief Maximum canonical extent of franka_spine_msgs/srv/FaultReset_Response in bytes.
 /// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=521;
 /// @brief Canonical codec identity of franka_spine_msgs/srv/FaultReset_Response.
 /// @details Exact identity UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c";
 /// @brief Original ROS type name for franka_spine_msgs/srv/FaultReset_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/srv/FaultReset_Response";
 /// @brief Selected original native identity for franka_spine_msgs/srv/FaultReset_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_spine_msgs/srv/FaultReset_Response.state: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_state=null;
 /// @brief franka_spine_msgs/srv/FaultReset_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_spine_msgs/srv/FaultReset_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of franka_spine_msgs/srv/FaultReset_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_state,256)) return false;
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/srv/FaultReset_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsSrvFaultReset_Response value) {
  value=Ros2Franka_spine_msgsSrvFaultReset_Response.init;
  if(!r.text(value.field_state,256)) return false;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/srv/FaultReset_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/srv/FaultReset_Response value.
 /// @details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsSrvFaultReset_Response value) {
  if(bytes.length<9 || bytes.length>521) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/srv/GetParameters_Request value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsSrvGetParameters_Request {
 /// @brief Maximum canonical extent of franka_spine_msgs/srv/GetParameters_Request in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_spine_msgs/srv/GetParameters_Request.
 /// @details Exact identity UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14";
 /// @brief Original ROS type name for franka_spine_msgs/srv/GetParameters_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/srv/GetParameters_Request";
 /// @brief Selected original native identity for franka_spine_msgs/srv/GetParameters_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_spine_msgs/srv/GetParameters_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/srv/GetParameters_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsSrvGetParameters_Request value) {
  value=Ros2Franka_spine_msgsSrvGetParameters_Request.init;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/srv/GetParameters_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/srv/GetParameters_Request value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsSrvGetParameters_Request value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/srv/GetParameters_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 21..277 bytes and
/// is identified by UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsSrvGetParameters_Response {
 /// @brief Maximum canonical extent of franka_spine_msgs/srv/GetParameters_Response in bytes.
 /// @details The inclusive bound is 277 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=277;
 /// @brief Canonical codec identity of franka_spine_msgs/srv/GetParameters_Response.
 /// @details Exact identity UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed";
 /// @brief Original ROS type name for franka_spine_msgs/srv/GetParameters_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/srv/GetParameters_Response";
 /// @brief Selected original native identity for franka_spine_msgs/srv/GetParameters_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_spine_msgs/srv/GetParameters_Response.parameters: franka_spine_msgs/msg/SpineParameters.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Franka_spine_msgsMsgSpineParameters field_parameters=Ros2Franka_spine_msgsMsgSpineParameters.init;
 /// @brief franka_spine_msgs/srv/GetParameters_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_spine_msgs/srv/GetParameters_Response.message: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of franka_spine_msgs/srv/GetParameters_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_parameters.writeFields(w)) return false;
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/srv/GetParameters_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsSrvGetParameters_Response value) {
  value=Ros2Franka_spine_msgsSrvGetParameters_Response.init;
  if(!Ros2Franka_spine_msgsMsgSpineParameters.readFields(r,arena,value.field_parameters)) return false;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/srv/GetParameters_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/srv/GetParameters_Response value.
 /// @details Require the complete 21..277-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsSrvGetParameters_Response value) {
  if(bytes.length<21 || bytes.length>277) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/srv/GetPosition_Request value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsSrvGetPosition_Request {
 /// @brief Maximum canonical extent of franka_spine_msgs/srv/GetPosition_Request in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_spine_msgs/srv/GetPosition_Request.
 /// @details Exact identity UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2";
 /// @brief Original ROS type name for franka_spine_msgs/srv/GetPosition_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/srv/GetPosition_Request";
 /// @brief Selected original native identity for franka_spine_msgs/srv/GetPosition_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_spine_msgs/srv/GetPosition_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/srv/GetPosition_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsSrvGetPosition_Request value) {
  value=Ros2Franka_spine_msgsSrvGetPosition_Request.init;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/srv/GetPosition_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/srv/GetPosition_Request value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsSrvGetPosition_Request value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/srv/GetPosition_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 9..9 bytes and is
/// identified by UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsSrvGetPosition_Response {
 /// @brief Maximum canonical extent of franka_spine_msgs/srv/GetPosition_Response in bytes.
 /// @details The inclusive bound is 9 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=9;
 /// @brief Canonical codec identity of franka_spine_msgs/srv/GetPosition_Response.
 /// @details Exact identity UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8";
 /// @brief Original ROS type name for franka_spine_msgs/srv/GetPosition_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/srv/GetPosition_Response";
 /// @brief Selected original native identity for franka_spine_msgs/srv/GetPosition_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_spine_msgs/srv/GetPosition_Response.position: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/d/API-CONTRACT.md
 double field_position=0;
 /// @brief franka_spine_msgs/srv/GetPosition_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of franka_spine_msgs/srv/GetPosition_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_position)) return false;
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/srv/GetPosition_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsSrvGetPosition_Response value) {
  value=Ros2Franka_spine_msgsSrvGetPosition_Response.init;
  if(!r.float64(value.field_position)) return false;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/srv/GetPosition_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/srv/GetPosition_Response value.
 /// @details Require the complete 9..9-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsSrvGetPosition_Response value) {
  if(bytes.length<9 || bytes.length>9) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/srv/GetSpineState_Request value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsSrvGetSpineState_Request {
 /// @brief Maximum canonical extent of franka_spine_msgs/srv/GetSpineState_Request in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_spine_msgs/srv/GetSpineState_Request.
 /// @details Exact identity UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67";
 /// @brief Original ROS type name for franka_spine_msgs/srv/GetSpineState_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/srv/GetSpineState_Request";
 /// @brief Selected original native identity for franka_spine_msgs/srv/GetSpineState_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_spine_msgs/srv/GetSpineState_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/srv/GetSpineState_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsSrvGetSpineState_Request value) {
  value=Ros2Franka_spine_msgsSrvGetSpineState_Request.init;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/srv/GetSpineState_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/srv/GetSpineState_Request value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsSrvGetSpineState_Request value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/srv/GetSpineState_Response value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 13..781 bytes and
/// is identified by UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsSrvGetSpineState_Response {
 /// @brief Maximum canonical extent of franka_spine_msgs/srv/GetSpineState_Response in bytes.
 /// @details The inclusive bound is 781 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=781;
 /// @brief Canonical codec identity of franka_spine_msgs/srv/GetSpineState_Response.
 /// @details Exact identity UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1";
 /// @brief Original ROS type name for franka_spine_msgs/srv/GetSpineState_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/srv/GetSpineState_Response";
 /// @brief Selected original native identity for franka_spine_msgs/srv/GetSpineState_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_spine_msgs/srv/GetSpineState_Response.state: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_state=null;
 /// @brief franka_spine_msgs/srv/GetSpineState_Response.error_code: string; each string is 0..256 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error_code=null;
 /// @brief franka_spine_msgs/srv/GetSpineState_Response.error_description: string; each string is 0..256 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error_description=null;
 /// @brief franka_spine_msgs/srv/GetSpineState_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of franka_spine_msgs/srv/GetSpineState_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_state,256)) return false;
  if(!w.text(this.field_error_code,256)) return false;
  if(!w.text(this.field_error_description,256)) return false;
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/srv/GetSpineState_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsSrvGetSpineState_Response value) {
  value=Ros2Franka_spine_msgsSrvGetSpineState_Response.init;
  if(!r.text(value.field_state,256)) return false;
  if(!r.text(value.field_error_code,256)) return false;
  if(!r.text(value.field_error_description,256)) return false;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/srv/GetSpineState_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/srv/GetSpineState_Response value.
 /// @details Require the complete 13..781-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsSrvGetSpineState_Response value) {
  if(bytes.length<13 || bytes.length>781) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/srv/Halt_Request value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsSrvHalt_Request {
 /// @brief Maximum canonical extent of franka_spine_msgs/srv/Halt_Request in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_spine_msgs/srv/Halt_Request.
 /// @details Exact identity UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111";
 /// @brief Original ROS type name for franka_spine_msgs/srv/Halt_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/srv/Halt_Request";
 /// @brief Selected original native identity for franka_spine_msgs/srv/Halt_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_spine_msgs/srv/Halt_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/srv/Halt_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsSrvHalt_Request value) {
  value=Ros2Franka_spine_msgsSrvHalt_Request.init;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/srv/Halt_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/srv/Halt_Request value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsSrvHalt_Request value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/srv/Halt_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes and
/// is identified by UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsSrvHalt_Response {
 /// @brief Maximum canonical extent of franka_spine_msgs/srv/Halt_Response in bytes.
 /// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=521;
 /// @brief Canonical codec identity of franka_spine_msgs/srv/Halt_Response.
 /// @details Exact identity UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77";
 /// @brief Original ROS type name for franka_spine_msgs/srv/Halt_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/srv/Halt_Response";
 /// @brief Selected original native identity for franka_spine_msgs/srv/Halt_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_spine_msgs/srv/Halt_Response.state: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_state=null;
 /// @brief franka_spine_msgs/srv/Halt_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_spine_msgs/srv/Halt_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of franka_spine_msgs/srv/Halt_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_state,256)) return false;
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/srv/Halt_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsSrvHalt_Response value) {
  value=Ros2Franka_spine_msgsSrvHalt_Response.init;
  if(!r.text(value.field_state,256)) return false;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/srv/Halt_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/srv/Halt_Response value.
 /// @details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsSrvHalt_Response value) {
  if(bytes.length<9 || bytes.length>521) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/srv/SwitchOff_Request value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsSrvSwitchOff_Request {
 /// @brief Maximum canonical extent of franka_spine_msgs/srv/SwitchOff_Request in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_spine_msgs/srv/SwitchOff_Request.
 /// @details Exact identity UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16";
 /// @brief Original ROS type name for franka_spine_msgs/srv/SwitchOff_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/srv/SwitchOff_Request";
 /// @brief Selected original native identity for franka_spine_msgs/srv/SwitchOff_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_spine_msgs/srv/SwitchOff_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/srv/SwitchOff_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsSrvSwitchOff_Request value) {
  value=Ros2Franka_spine_msgsSrvSwitchOff_Request.init;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/srv/SwitchOff_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/srv/SwitchOff_Request value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsSrvSwitchOff_Request value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/srv/SwitchOff_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes and
/// is identified by UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsSrvSwitchOff_Response {
 /// @brief Maximum canonical extent of franka_spine_msgs/srv/SwitchOff_Response in bytes.
 /// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=521;
 /// @brief Canonical codec identity of franka_spine_msgs/srv/SwitchOff_Response.
 /// @details Exact identity UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad";
 /// @brief Original ROS type name for franka_spine_msgs/srv/SwitchOff_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/srv/SwitchOff_Response";
 /// @brief Selected original native identity for franka_spine_msgs/srv/SwitchOff_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_spine_msgs/srv/SwitchOff_Response.state: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_state=null;
 /// @brief franka_spine_msgs/srv/SwitchOff_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_spine_msgs/srv/SwitchOff_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of franka_spine_msgs/srv/SwitchOff_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_state,256)) return false;
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/srv/SwitchOff_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsSrvSwitchOff_Response value) {
  value=Ros2Franka_spine_msgsSrvSwitchOff_Response.init;
  if(!r.text(value.field_state,256)) return false;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/srv/SwitchOff_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/srv/SwitchOff_Response value.
 /// @details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsSrvSwitchOff_Response value) {
  if(bytes.length<9 || bytes.length>521) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/srv/SwitchOn_Request value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsSrvSwitchOn_Request {
 /// @brief Maximum canonical extent of franka_spine_msgs/srv/SwitchOn_Request in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_spine_msgs/srv/SwitchOn_Request.
 /// @details Exact identity UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56";
 /// @brief Original ROS type name for franka_spine_msgs/srv/SwitchOn_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/srv/SwitchOn_Request";
 /// @brief Selected original native identity for franka_spine_msgs/srv/SwitchOn_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_spine_msgs/srv/SwitchOn_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/srv/SwitchOn_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsSrvSwitchOn_Request value) {
  value=Ros2Franka_spine_msgsSrvSwitchOn_Request.init;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/srv/SwitchOn_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/srv/SwitchOn_Request value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsSrvSwitchOn_Request value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 franka_spine_msgs/srv/SwitchOn_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes and
/// is identified by UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Franka_spine_msgsSrvSwitchOn_Response {
 /// @brief Maximum canonical extent of franka_spine_msgs/srv/SwitchOn_Response in bytes.
 /// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=521;
 /// @brief Canonical codec identity of franka_spine_msgs/srv/SwitchOn_Response.
 /// @details Exact identity UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d";
 /// @brief Original ROS type name for franka_spine_msgs/srv/SwitchOn_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_spine_msgs/srv/SwitchOn_Response";
 /// @brief Selected original native identity for franka_spine_msgs/srv/SwitchOn_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_spine_msgs/srv/SwitchOn_Response.state: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_state=null;
 /// @brief franka_spine_msgs/srv/SwitchOn_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_spine_msgs/srv/SwitchOn_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of franka_spine_msgs/srv/SwitchOn_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_state,256)) return false;
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_spine_msgs/srv/SwitchOn_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Franka_spine_msgsSrvSwitchOn_Response value) {
  value=Ros2Franka_spine_msgsSrvSwitchOn_Response.init;
  if(!r.text(value.field_state,256)) return false;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_spine_msgs/srv/SwitchOn_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_spine_msgs/srv/SwitchOn_Response value.
 /// @details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Franka_spine_msgsSrvSwitchOn_Response value) {
  if(bytes.length<9 || bytes.length>521) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
