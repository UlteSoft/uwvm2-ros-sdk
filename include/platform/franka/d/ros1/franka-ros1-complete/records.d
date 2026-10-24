// Generated complete bounded values; BetterC, caller buffers, no authority.
module franka.ros1.records;
import roswasm.wire;
@nogc nothrow:
/// @brief Complete ROS 1 franka_example_controllers/JointTorqueComparison value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 176..176 bytes
/// and is identified by UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_example_controllersJointTorqueComparison {
 /// @brief Maximum canonical extent of franka_example_controllers/JointTorqueComparison in bytes.
 /// @details The inclusive bound is 176 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=176;
 /// @brief Canonical codec identity of franka_example_controllers/JointTorqueComparison.
 /// @details Exact identity UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254";
 /// @brief Original ROS type name for franka_example_controllers/JointTorqueComparison.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_example_controllers/JointTorqueComparison";
 /// @brief Selected original native identity for franka_example_controllers/JointTorqueComparison.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_example_controllers/JointTorqueComparison.tau_error: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/d/API-CONTRACT.md
 double[7] field_tau_error=0;
 /// @brief franka_example_controllers/JointTorqueComparison.tau_commanded: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/d/API-CONTRACT.md
 double[7] field_tau_commanded=0;
 /// @brief franka_example_controllers/JointTorqueComparison.tau_measured: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/d/API-CONTRACT.md
 double[7] field_tau_measured=0;
 /// @brief franka_example_controllers/JointTorqueComparison.root_mean_square_error: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/d/API-CONTRACT.md
 double field_root_mean_square_error=0;
 /// @brief Append every canonical field of franka_example_controllers/JointTorqueComparison.
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
 /// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  foreach(ref e; this.field_tau_error) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_tau_commanded) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_tau_measured) {
  if(!w.float64(e)) return false;
  }
  if(!w.float64(this.field_root_mean_square_error)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_example_controllers/JointTorqueComparison.
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
 /// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_example_controllersJointTorqueComparison value) {
  value=Ros1Franka_example_controllersJointTorqueComparison.init;
  foreach(ref e; value.field_tau_error) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_tau_commanded) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_tau_measured) {
  if(!r.float64(e)) return false;
  }
  if(!r.float64(value.field_root_mean_square_error)) return false;
  return true;
 }
 /// @brief Encode one complete franka_example_controllers/JointTorqueComparison value.
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
 /// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_example_controllers/JointTorqueComparison value.
 /// @details Require the complete 176..176-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_example_controllersJointTorqueComparison value) {
  if(bytes.length<176 || bytes.length>176) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_gripper/GraspEpsilon value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
/// is identified by UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_gripperGraspEpsilon {
 /// @brief Maximum canonical extent of franka_gripper/GraspEpsilon in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of franka_gripper/GraspEpsilon.
 /// @details Exact identity UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9";
 /// @brief Original ROS type name for franka_gripper/GraspEpsilon.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_gripper/GraspEpsilon";
 /// @brief Selected original native identity for franka_gripper/GraspEpsilon.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_gripper/GraspEpsilon.inner: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 double field_inner=0;
 /// @brief franka_gripper/GraspEpsilon.outer: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 double field_outer=0;
 /// @brief Append every canonical field of franka_gripper/GraspEpsilon.
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
 /// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_inner)) return false;
  if(!w.float64(this.field_outer)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_gripper/GraspEpsilon.
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
 /// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_gripperGraspEpsilon value) {
  value=Ros1Franka_gripperGraspEpsilon.init;
  if(!r.float64(value.field_inner)) return false;
  if(!r.float64(value.field_outer)) return false;
  return true;
 }
 /// @brief Encode one complete franka_gripper/GraspEpsilon value.
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
 /// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_gripper/GraspEpsilon value.
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
 /// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_gripperGraspEpsilon value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_gripper/GraspGoal value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 40..40 bytes and
/// is identified by UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_gripperGraspGoal {
 /// @brief Maximum canonical extent of franka_gripper/GraspGoal in bytes.
 /// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_gripperGraspGoal; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=40;
 /// @brief Canonical codec identity of franka_gripper/GraspGoal.
 /// @details Exact identity UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_gripperGraspGoal; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf";
 /// @brief Original ROS type name for franka_gripper/GraspGoal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_gripperGraspGoal; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_gripper/GraspGoal";
 /// @brief Selected original native identity for franka_gripper/GraspGoal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_gripperGraspGoal; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_gripper/GraspGoal.width: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperGraspGoal; share/platform/ros/d/API-CONTRACT.md
 double field_width=0;
 /// @brief franka_gripper/GraspGoal.epsilon: franka_gripper/GraspEpsilon.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperGraspGoal; share/platform/ros/d/API-CONTRACT.md
 Ros1Franka_gripperGraspEpsilon field_epsilon=Ros1Franka_gripperGraspEpsilon.init;
 /// @brief franka_gripper/GraspGoal.speed: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperGraspGoal; share/platform/ros/d/API-CONTRACT.md
 double field_speed=0;
 /// @brief franka_gripper/GraspGoal.force: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperGraspGoal; share/platform/ros/d/API-CONTRACT.md
 double field_force=0;
 /// @brief Append every canonical field of franka_gripper/GraspGoal.
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
 /// @see Ros1Franka_gripperGraspGoal; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_width)) return false;
  if(!this.field_epsilon.writeFields(w)) return false;
  if(!w.float64(this.field_speed)) return false;
  if(!w.float64(this.field_force)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_gripper/GraspGoal.
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
 /// @see Ros1Franka_gripperGraspGoal; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_gripperGraspGoal value) {
  value=Ros1Franka_gripperGraspGoal.init;
  if(!r.float64(value.field_width)) return false;
  if(!Ros1Franka_gripperGraspEpsilon.readFields(r,arena,value.field_epsilon)) return false;
  if(!r.float64(value.field_speed)) return false;
  if(!r.float64(value.field_force)) return false;
  return true;
 }
 /// @brief Encode one complete franka_gripper/GraspGoal value.
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
 /// @see Ros1Franka_gripperGraspGoal; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_gripper/GraspGoal value.
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
 /// @see Ros1Franka_gripperGraspGoal; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_gripperGraspGoal value) {
  if(bytes.length<40 || bytes.length>40) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_gripper/GraspResult value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_gripperGraspResult {
 /// @brief Maximum canonical extent of franka_gripper/GraspResult in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_gripperGraspResult; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_gripper/GraspResult.
 /// @details Exact identity UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_gripperGraspResult; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e";
 /// @brief Original ROS type name for franka_gripper/GraspResult.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_gripperGraspResult; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_gripper/GraspResult";
 /// @brief Selected original native identity for franka_gripper/GraspResult.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_gripperGraspResult; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_gripper/GraspResult.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperGraspResult; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_gripper/GraspResult.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperGraspResult; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_gripper/GraspResult.
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
 /// @see Ros1Franka_gripperGraspResult; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_gripper/GraspResult.
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
 /// @see Ros1Franka_gripperGraspResult; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_gripperGraspResult value) {
  value=Ros1Franka_gripperGraspResult.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_gripper/GraspResult value.
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
 /// @see Ros1Franka_gripperGraspResult; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_gripper/GraspResult value.
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
 /// @see Ros1Franka_gripperGraspResult; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_gripperGraspResult value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_gripper/GraspFeedback value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_gripperGraspFeedback {
 /// @brief Maximum canonical extent of franka_gripper/GraspFeedback in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_gripper/GraspFeedback.
 /// @details Exact identity UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d";
 /// @brief Original ROS type name for franka_gripper/GraspFeedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_gripper/GraspFeedback";
 /// @brief Selected original native identity for franka_gripper/GraspFeedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_gripper/GraspFeedback.
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
 /// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_gripper/GraspFeedback.
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
 /// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_gripperGraspFeedback value) {
  value=Ros1Franka_gripperGraspFeedback.init;
  return true;
 }
 /// @brief Encode one complete franka_gripper/GraspFeedback value.
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
 /// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_gripper/GraspFeedback value.
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
 /// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_gripperGraspFeedback value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_gripper/HomingGoal value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_gripperHomingGoal {
 /// @brief Maximum canonical extent of franka_gripper/HomingGoal in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_gripperHomingGoal; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_gripper/HomingGoal.
 /// @details Exact identity UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_gripperHomingGoal; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f";
 /// @brief Original ROS type name for franka_gripper/HomingGoal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_gripperHomingGoal; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_gripper/HomingGoal";
 /// @brief Selected original native identity for franka_gripper/HomingGoal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_gripperHomingGoal; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_gripper/HomingGoal.
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
 /// @see Ros1Franka_gripperHomingGoal; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_gripper/HomingGoal.
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
 /// @see Ros1Franka_gripperHomingGoal; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_gripperHomingGoal value) {
  value=Ros1Franka_gripperHomingGoal.init;
  return true;
 }
 /// @brief Encode one complete franka_gripper/HomingGoal value.
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
 /// @see Ros1Franka_gripperHomingGoal; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_gripper/HomingGoal value.
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
 /// @see Ros1Franka_gripperHomingGoal; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_gripperHomingGoal value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_gripper/HomingResult value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_gripperHomingResult {
 /// @brief Maximum canonical extent of franka_gripper/HomingResult in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_gripperHomingResult; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_gripper/HomingResult.
 /// @details Exact identity UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_gripperHomingResult; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477";
 /// @brief Original ROS type name for franka_gripper/HomingResult.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_gripperHomingResult; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_gripper/HomingResult";
 /// @brief Selected original native identity for franka_gripper/HomingResult.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_gripperHomingResult; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_gripper/HomingResult.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperHomingResult; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_gripper/HomingResult.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperHomingResult; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_gripper/HomingResult.
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
 /// @see Ros1Franka_gripperHomingResult; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_gripper/HomingResult.
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
 /// @see Ros1Franka_gripperHomingResult; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_gripperHomingResult value) {
  value=Ros1Franka_gripperHomingResult.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_gripper/HomingResult value.
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
 /// @see Ros1Franka_gripperHomingResult; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_gripper/HomingResult value.
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
 /// @see Ros1Franka_gripperHomingResult; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_gripperHomingResult value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_gripper/HomingFeedback value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_gripperHomingFeedback {
 /// @brief Maximum canonical extent of franka_gripper/HomingFeedback in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_gripper/HomingFeedback.
 /// @details Exact identity UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e";
 /// @brief Original ROS type name for franka_gripper/HomingFeedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_gripper/HomingFeedback";
 /// @brief Selected original native identity for franka_gripper/HomingFeedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_gripper/HomingFeedback.
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
 /// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_gripper/HomingFeedback.
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
 /// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_gripperHomingFeedback value) {
  value=Ros1Franka_gripperHomingFeedback.init;
  return true;
 }
 /// @brief Encode one complete franka_gripper/HomingFeedback value.
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
 /// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_gripper/HomingFeedback value.
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
 /// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_gripperHomingFeedback value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_gripper/MoveGoal value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
/// is identified by UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_gripperMoveGoal {
 /// @brief Maximum canonical extent of franka_gripper/MoveGoal in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of franka_gripper/MoveGoal.
 /// @details Exact identity UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a";
 /// @brief Original ROS type name for franka_gripper/MoveGoal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_gripper/MoveGoal";
 /// @brief Selected original native identity for franka_gripper/MoveGoal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_gripper/MoveGoal.width: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 double field_width=0;
 /// @brief franka_gripper/MoveGoal.speed: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 double field_speed=0;
 /// @brief Append every canonical field of franka_gripper/MoveGoal.
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
 /// @see Ros1Franka_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_width)) return false;
  if(!w.float64(this.field_speed)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_gripper/MoveGoal.
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
 /// @see Ros1Franka_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_gripperMoveGoal value) {
  value=Ros1Franka_gripperMoveGoal.init;
  if(!r.float64(value.field_width)) return false;
  if(!r.float64(value.field_speed)) return false;
  return true;
 }
 /// @brief Encode one complete franka_gripper/MoveGoal value.
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
 /// @see Ros1Franka_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_gripper/MoveGoal value.
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
 /// @see Ros1Franka_gripperMoveGoal; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_gripperMoveGoal value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_gripper/MoveResult value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_gripperMoveResult {
 /// @brief Maximum canonical extent of franka_gripper/MoveResult in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_gripper/MoveResult.
 /// @details Exact identity UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3";
 /// @brief Original ROS type name for franka_gripper/MoveResult.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_gripper/MoveResult";
 /// @brief Selected original native identity for franka_gripper/MoveResult.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_gripper/MoveResult.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_gripper/MoveResult.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_gripper/MoveResult.
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
 /// @see Ros1Franka_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_gripper/MoveResult.
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
 /// @see Ros1Franka_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_gripperMoveResult value) {
  value=Ros1Franka_gripperMoveResult.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_gripper/MoveResult value.
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
 /// @see Ros1Franka_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_gripper/MoveResult value.
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
 /// @see Ros1Franka_gripperMoveResult; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_gripperMoveResult value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_gripper/MoveFeedback value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_gripperMoveFeedback {
 /// @brief Maximum canonical extent of franka_gripper/MoveFeedback in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_gripper/MoveFeedback.
 /// @details Exact identity UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80";
 /// @brief Original ROS type name for franka_gripper/MoveFeedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_gripper/MoveFeedback";
 /// @brief Selected original native identity for franka_gripper/MoveFeedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_gripper/MoveFeedback.
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
 /// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_gripper/MoveFeedback.
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
 /// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_gripperMoveFeedback value) {
  value=Ros1Franka_gripperMoveFeedback.init;
  return true;
 }
 /// @brief Encode one complete franka_gripper/MoveFeedback value.
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
 /// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_gripper/MoveFeedback value.
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
 /// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_gripperMoveFeedback value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_gripper/StopGoal value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_gripperStopGoal {
 /// @brief Maximum canonical extent of franka_gripper/StopGoal in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_gripperStopGoal; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_gripper/StopGoal.
 /// @details Exact identity UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_gripperStopGoal; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245";
 /// @brief Original ROS type name for franka_gripper/StopGoal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_gripperStopGoal; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_gripper/StopGoal";
 /// @brief Selected original native identity for franka_gripper/StopGoal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_gripperStopGoal; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_gripper/StopGoal.
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
 /// @see Ros1Franka_gripperStopGoal; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_gripper/StopGoal.
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
 /// @see Ros1Franka_gripperStopGoal; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_gripperStopGoal value) {
  value=Ros1Franka_gripperStopGoal.init;
  return true;
 }
 /// @brief Encode one complete franka_gripper/StopGoal value.
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
 /// @see Ros1Franka_gripperStopGoal; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_gripper/StopGoal value.
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
 /// @see Ros1Franka_gripperStopGoal; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_gripperStopGoal value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_gripper/StopResult value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_gripperStopResult {
 /// @brief Maximum canonical extent of franka_gripper/StopResult in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_gripperStopResult; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_gripper/StopResult.
 /// @details Exact identity UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_gripperStopResult; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61";
 /// @brief Original ROS type name for franka_gripper/StopResult.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_gripperStopResult; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_gripper/StopResult";
 /// @brief Selected original native identity for franka_gripper/StopResult.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_gripperStopResult; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_gripper/StopResult.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperStopResult; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_gripper/StopResult.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_gripperStopResult; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_gripper/StopResult.
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
 /// @see Ros1Franka_gripperStopResult; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_gripper/StopResult.
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
 /// @see Ros1Franka_gripperStopResult; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_gripperStopResult value) {
  value=Ros1Franka_gripperStopResult.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_gripper/StopResult value.
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
 /// @see Ros1Franka_gripperStopResult; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_gripper/StopResult value.
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
 /// @see Ros1Franka_gripperStopResult; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_gripperStopResult value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_gripper/StopFeedback value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_gripperStopFeedback {
 /// @brief Maximum canonical extent of franka_gripper/StopFeedback in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_gripperStopFeedback; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_gripper/StopFeedback.
 /// @details Exact identity UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_gripperStopFeedback; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d";
 /// @brief Original ROS type name for franka_gripper/StopFeedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_gripperStopFeedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_gripper/StopFeedback";
 /// @brief Selected original native identity for franka_gripper/StopFeedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_gripperStopFeedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_gripper/StopFeedback.
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
 /// @see Ros1Franka_gripperStopFeedback; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_gripper/StopFeedback.
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
 /// @see Ros1Franka_gripperStopFeedback; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_gripperStopFeedback value) {
  value=Ros1Franka_gripperStopFeedback.init;
  return true;
 }
 /// @brief Encode one complete franka_gripper/StopFeedback value.
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
 /// @see Ros1Franka_gripperStopFeedback; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_gripper/StopFeedback value.
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
 /// @see Ros1Franka_gripperStopFeedback; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_gripperStopFeedback value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/ErrorRecoveryGoal value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsErrorRecoveryGoal {
 /// @brief Maximum canonical extent of franka_msgs/ErrorRecoveryGoal in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_msgs/ErrorRecoveryGoal.
 /// @details Exact identity UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64";
 /// @brief Original ROS type name for franka_msgs/ErrorRecoveryGoal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/ErrorRecoveryGoal";
 /// @brief Selected original native identity for franka_msgs/ErrorRecoveryGoal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_msgs/ErrorRecoveryGoal.
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
 /// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/ErrorRecoveryGoal.
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
 /// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsErrorRecoveryGoal value) {
  value=Ros1Franka_msgsErrorRecoveryGoal.init;
  return true;
 }
 /// @brief Encode one complete franka_msgs/ErrorRecoveryGoal value.
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
 /// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/ErrorRecoveryGoal value.
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
 /// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsErrorRecoveryGoal value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/ErrorRecoveryResult value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsErrorRecoveryResult {
 /// @brief Maximum canonical extent of franka_msgs/ErrorRecoveryResult in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_msgs/ErrorRecoveryResult.
 /// @details Exact identity UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794";
 /// @brief Original ROS type name for franka_msgs/ErrorRecoveryResult.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/ErrorRecoveryResult";
 /// @brief Selected original native identity for franka_msgs/ErrorRecoveryResult.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_msgs/ErrorRecoveryResult.
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
 /// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/ErrorRecoveryResult.
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
 /// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsErrorRecoveryResult value) {
  value=Ros1Franka_msgsErrorRecoveryResult.init;
  return true;
 }
 /// @brief Encode one complete franka_msgs/ErrorRecoveryResult value.
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
 /// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/ErrorRecoveryResult value.
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
 /// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsErrorRecoveryResult value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/ErrorRecoveryFeedback value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
/// identified by UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsErrorRecoveryFeedback {
 /// @brief Maximum canonical extent of franka_msgs/ErrorRecoveryFeedback in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of franka_msgs/ErrorRecoveryFeedback.
 /// @details Exact identity UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21";
 /// @brief Original ROS type name for franka_msgs/ErrorRecoveryFeedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/ErrorRecoveryFeedback";
 /// @brief Selected original native identity for franka_msgs/ErrorRecoveryFeedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of franka_msgs/ErrorRecoveryFeedback.
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
 /// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/ErrorRecoveryFeedback.
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
 /// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsErrorRecoveryFeedback value) {
  value=Ros1Franka_msgsErrorRecoveryFeedback.init;
  return true;
 }
 /// @brief Encode one complete franka_msgs/ErrorRecoveryFeedback value.
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
 /// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/ErrorRecoveryFeedback value.
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
 /// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsErrorRecoveryFeedback value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/Errors value.
/// @details All 41 declared fields are retained in source order. The canonical representation occupies 41..41 bytes and
/// is identified by UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsErrors {
 /// @brief Maximum canonical extent of franka_msgs/Errors in bytes.
 /// @details The inclusive bound is 41 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=41;
 /// @brief Canonical codec identity of franka_msgs/Errors.
 /// @details Exact identity UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca";
 /// @brief Original ROS type name for franka_msgs/Errors.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/Errors";
 /// @brief Selected original native identity for franka_msgs/Errors.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/Errors.joint_position_limits_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_position_limits_violation=false;
 /// @brief franka_msgs/Errors.cartesian_position_limits_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_position_limits_violation=false;
 /// @brief franka_msgs/Errors.self_collision_avoidance_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_self_collision_avoidance_violation=false;
 /// @brief franka_msgs/Errors.joint_velocity_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_velocity_violation=false;
 /// @brief franka_msgs/Errors.cartesian_velocity_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_velocity_violation=false;
 /// @brief franka_msgs/Errors.force_control_safety_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_force_control_safety_violation=false;
 /// @brief franka_msgs/Errors.joint_reflex: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_reflex=false;
 /// @brief franka_msgs/Errors.cartesian_reflex: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_reflex=false;
 /// @brief franka_msgs/Errors.max_goal_pose_deviation_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_max_goal_pose_deviation_violation=false;
 /// @brief franka_msgs/Errors.max_path_pose_deviation_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_max_path_pose_deviation_violation=false;
 /// @brief franka_msgs/Errors.cartesian_velocity_profile_safety_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_velocity_profile_safety_violation=false;
 /// @brief franka_msgs/Errors.joint_position_motion_generator_start_pose_invalid: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_position_motion_generator_start_pose_invalid=false;
 /// @brief franka_msgs/Errors.joint_motion_generator_position_limits_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_motion_generator_position_limits_violation=false;
 /// @brief franka_msgs/Errors.joint_motion_generator_velocity_limits_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_motion_generator_velocity_limits_violation=false;
 /// @brief franka_msgs/Errors.joint_motion_generator_velocity_discontinuity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_motion_generator_velocity_discontinuity=false;
 /// @brief franka_msgs/Errors.joint_motion_generator_acceleration_discontinuity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_motion_generator_acceleration_discontinuity=false;
 /// @brief franka_msgs/Errors.cartesian_position_motion_generator_start_pose_invalid: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_position_motion_generator_start_pose_invalid=false;
 /// @brief franka_msgs/Errors.cartesian_motion_generator_elbow_limit_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_elbow_limit_violation=false;
 /// @brief franka_msgs/Errors.cartesian_motion_generator_velocity_limits_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_velocity_limits_violation=false;
 /// @brief franka_msgs/Errors.cartesian_motion_generator_velocity_discontinuity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_velocity_discontinuity=false;
 /// @brief franka_msgs/Errors.cartesian_motion_generator_acceleration_discontinuity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_acceleration_discontinuity=false;
 /// @brief franka_msgs/Errors.cartesian_motion_generator_elbow_sign_inconsistent: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_elbow_sign_inconsistent=false;
 /// @brief franka_msgs/Errors.cartesian_motion_generator_start_elbow_invalid: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_start_elbow_invalid=false;
 /// @brief franka_msgs/Errors.cartesian_motion_generator_joint_position_limits_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_joint_position_limits_violation=false;
 /// @brief franka_msgs/Errors.cartesian_motion_generator_joint_velocity_limits_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_joint_velocity_limits_violation=false;
 /// @brief franka_msgs/Errors.cartesian_motion_generator_joint_velocity_discontinuity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_joint_velocity_discontinuity=false;
 /// @brief franka_msgs/Errors.cartesian_motion_generator_joint_acceleration_discontinuity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_motion_generator_joint_acceleration_discontinuity=false;
 /// @brief franka_msgs/Errors.cartesian_position_motion_generator_invalid_frame: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_position_motion_generator_invalid_frame=false;
 /// @brief franka_msgs/Errors.force_controller_desired_force_tolerance_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_force_controller_desired_force_tolerance_violation=false;
 /// @brief franka_msgs/Errors.controller_torque_discontinuity: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_controller_torque_discontinuity=false;
 /// @brief franka_msgs/Errors.start_elbow_sign_inconsistent: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_start_elbow_sign_inconsistent=false;
 /// @brief franka_msgs/Errors.communication_constraints_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_communication_constraints_violation=false;
 /// @brief franka_msgs/Errors.power_limit_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_power_limit_violation=false;
 /// @brief franka_msgs/Errors.joint_p2p_insufficient_torque_for_planning: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_p2p_insufficient_torque_for_planning=false;
 /// @brief franka_msgs/Errors.tau_j_range_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_tau_j_range_violation=false;
 /// @brief franka_msgs/Errors.instability_detected: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_instability_detected=false;
 /// @brief franka_msgs/Errors.joint_move_in_wrong_direction: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_move_in_wrong_direction=false;
 /// @brief franka_msgs/Errors.cartesian_spline_motion_generator_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_cartesian_spline_motion_generator_violation=false;
 /// @brief franka_msgs/Errors.joint_via_motion_generator_planning_joint_limit_violation: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_joint_via_motion_generator_planning_joint_limit_violation=false;
 /// @brief franka_msgs/Errors.base_acceleration_initialization_timeout: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_base_acceleration_initialization_timeout=false;
 /// @brief franka_msgs/Errors.base_acceleration_invalid_reading: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 bool field_base_acceleration_invalid_reading=false;
 /// @brief Append every canonical field of franka_msgs/Errors.
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
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
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
  if(!w.boolean(this.field_joint_move_in_wrong_direction)) return false;
  if(!w.boolean(this.field_cartesian_spline_motion_generator_violation)) return false;
  if(!w.boolean(this.field_joint_via_motion_generator_planning_joint_limit_violation)) return false;
  if(!w.boolean(this.field_base_acceleration_initialization_timeout)) return false;
  if(!w.boolean(this.field_base_acceleration_invalid_reading)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/Errors.
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
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsErrors value) {
  value=Ros1Franka_msgsErrors.init;
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
  if(!r.boolean(value.field_joint_move_in_wrong_direction)) return false;
  if(!r.boolean(value.field_cartesian_spline_motion_generator_violation)) return false;
  if(!r.boolean(value.field_joint_via_motion_generator_planning_joint_limit_violation)) return false;
  if(!r.boolean(value.field_base_acceleration_initialization_timeout)) return false;
  if(!r.boolean(value.field_base_acceleration_invalid_reading)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/Errors value.
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
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/Errors value.
 /// @details Require the complete 41..41-byte canonical representation. Reject truncation, invalid fields and trailing
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
 /// @see Ros1Franka_msgsErrors; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsErrors value) {
  if(bytes.length<41 || bytes.length>41) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 time value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
/// identified by UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Time {
 /// @brief Maximum canonical extent of time in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of time.
 /// @details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds field
 /// order, shape and bounds. It does not replace the native type identity.
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
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 uint field_sec=0;
 /// @brief time.nsec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 uint field_nsec=0;
 /// @brief Append every canonical field of time.
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
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete time value.
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
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Time value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 std_msgs/Header value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..144 bytes and
/// is identified by UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Std_msgsHeader {
 /// @brief Maximum canonical extent of std_msgs/Header in bytes.
 /// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=144;
 /// @brief Canonical codec identity of std_msgs/Header.
 /// @details Exact identity UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
 /// @brief Original ROS type name for std_msgs/Header.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="std_msgs/Header";
 /// @brief Selected original native identity for std_msgs/Header.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief std_msgs/Header.seq: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 uint field_seq=0;
 /// @brief std_msgs/Header.stamp: time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 Ros1Time field_stamp=Ros1Time.init;
 /// @brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_frame_id=null;
 /// @brief Append every canonical field of std_msgs/Header.
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
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
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
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
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
 /// @details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and trailing
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
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Std_msgsHeader value) {
  if(bytes.length<16 || bytes.length>144) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/FrankaState value.
/// @details All 48 declared fields are retained in source order. The canonical representation occupies 2491..2619 bytes
/// and is identified by UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsFrankaState {
 /// @brief Maximum canonical extent of franka_msgs/FrankaState in bytes.
 /// @details The inclusive bound is 2619 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=2619;
 /// @brief Canonical codec identity of franka_msgs/FrankaState.
 /// @details Exact identity UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71";
 /// @brief Original ROS type name for franka_msgs/FrankaState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/FrankaState";
 /// @brief Selected original native identity for franka_msgs/FrankaState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/FrankaState.ROBOT_MODE_OTHER: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_MODE_OTHER=0;
 /// @brief franka_msgs/FrankaState.ROBOT_MODE_IDLE: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_MODE_IDLE=1;
 /// @brief franka_msgs/FrankaState.ROBOT_MODE_MOVE: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_MODE_MOVE=2;
 /// @brief franka_msgs/FrankaState.ROBOT_MODE_GUIDING: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_MODE_GUIDING=3;
 /// @brief franka_msgs/FrankaState.ROBOT_MODE_REFLEX: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_MODE_REFLEX=4;
 /// @brief franka_msgs/FrankaState.ROBOT_MODE_USER_STOPPED: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_MODE_USER_STOPPED=5;
 /// @brief franka_msgs/FrankaState.ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY: original uint8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY=6;
 /// @brief franka_msgs/FrankaState.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 Ros1Std_msgsHeader field_header=Ros1Std_msgsHeader.init;
 /// @brief franka_msgs/FrankaState.cartesian_collision: float64; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[6] field_cartesian_collision=0;
 /// @brief franka_msgs/FrankaState.cartesian_contact: float64; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[6] field_cartesian_contact=0;
 /// @brief franka_msgs/FrankaState.q: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_q=0;
 /// @brief franka_msgs/FrankaState.q_d: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_q_d=0;
 /// @brief franka_msgs/FrankaState.dq: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_dq=0;
 /// @brief franka_msgs/FrankaState.dq_d: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_dq_d=0;
 /// @brief franka_msgs/FrankaState.ddq_d: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_ddq_d=0;
 /// @brief franka_msgs/FrankaState.theta: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_theta=0;
 /// @brief franka_msgs/FrankaState.dtheta: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_dtheta=0;
 /// @brief franka_msgs/FrankaState.tau_J: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_tau_J=0;
 /// @brief franka_msgs/FrankaState.dtau_J: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_dtau_J=0;
 /// @brief franka_msgs/FrankaState.tau_J_d: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_tau_J_d=0;
 /// @brief franka_msgs/FrankaState.K_F_ext_hat_K: float64; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[6] field_K_F_ext_hat_K=0;
 /// @brief franka_msgs/FrankaState.elbow: float64; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[2] field_elbow=0;
 /// @brief franka_msgs/FrankaState.elbow_d: float64; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[2] field_elbow_d=0;
 /// @brief franka_msgs/FrankaState.elbow_c: float64; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[2] field_elbow_c=0;
 /// @brief franka_msgs/FrankaState.delbow_c: float64; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[2] field_delbow_c=0;
 /// @brief franka_msgs/FrankaState.ddelbow_c: float64; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[2] field_ddelbow_c=0;
 /// @brief franka_msgs/FrankaState.joint_collision: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_joint_collision=0;
 /// @brief franka_msgs/FrankaState.joint_contact: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_joint_contact=0;
 /// @brief franka_msgs/FrankaState.O_F_ext_hat_K: float64; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[6] field_O_F_ext_hat_K=0;
 /// @brief franka_msgs/FrankaState.O_dP_EE_d: float64; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[6] field_O_dP_EE_d=0;
 /// @brief franka_msgs/FrankaState.O_ddP_O: float64; exactly 3 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[3] field_O_ddP_O=0;
 /// @brief franka_msgs/FrankaState.O_dP_EE_c: float64; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[6] field_O_dP_EE_c=0;
 /// @brief franka_msgs/FrankaState.O_ddP_EE_c: float64; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[6] field_O_ddP_EE_c=0;
 /// @brief franka_msgs/FrankaState.tau_ext_hat_filtered: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[7] field_tau_ext_hat_filtered=0;
 /// @brief franka_msgs/FrankaState.m_ee: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double field_m_ee=0;
 /// @brief franka_msgs/FrankaState.F_x_Cee: float64; exactly 3 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[3] field_F_x_Cee=0;
 /// @brief franka_msgs/FrankaState.I_ee: float64; exactly 9 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[9] field_I_ee=0;
 /// @brief franka_msgs/FrankaState.m_load: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double field_m_load=0;
 /// @brief franka_msgs/FrankaState.F_x_Cload: float64; exactly 3 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[3] field_F_x_Cload=0;
 /// @brief franka_msgs/FrankaState.I_load: float64; exactly 9 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[9] field_I_load=0;
 /// @brief franka_msgs/FrankaState.m_total: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double field_m_total=0;
 /// @brief franka_msgs/FrankaState.F_x_Ctotal: float64; exactly 3 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[3] field_F_x_Ctotal=0;
 /// @brief franka_msgs/FrankaState.I_total: float64; exactly 9 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[9] field_I_total=0;
 /// @brief franka_msgs/FrankaState.O_T_EE: float64; exactly 16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[16] field_O_T_EE=0;
 /// @brief franka_msgs/FrankaState.O_T_EE_d: float64; exactly 16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[16] field_O_T_EE_d=0;
 /// @brief franka_msgs/FrankaState.O_T_EE_c: float64; exactly 16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[16] field_O_T_EE_c=0;
 /// @brief franka_msgs/FrankaState.F_T_EE: float64; exactly 16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[16] field_F_T_EE=0;
 /// @brief franka_msgs/FrankaState.F_T_NE: float64; exactly 16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[16] field_F_T_NE=0;
 /// @brief franka_msgs/FrankaState.NE_T_EE: float64; exactly 16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[16] field_NE_T_EE=0;
 /// @brief franka_msgs/FrankaState.EE_T_K: float64; exactly 16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double[16] field_EE_T_K=0;
 /// @brief franka_msgs/FrankaState.time: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double field_time=0;
 /// @brief franka_msgs/FrankaState.control_command_success_rate: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 double field_control_command_success_rate=0;
 /// @brief franka_msgs/FrankaState.robot_mode: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 ubyte field_robot_mode=0;
 /// @brief franka_msgs/FrankaState.current_errors: franka_msgs/Errors.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 Ros1Franka_msgsErrors field_current_errors=Ros1Franka_msgsErrors.init;
 /// @brief franka_msgs/FrankaState.last_motion_errors: franka_msgs/Errors.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 Ros1Franka_msgsErrors field_last_motion_errors=Ros1Franka_msgsErrors.init;
 /// @brief Append every canonical field of franka_msgs/FrankaState.
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
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  foreach(ref e; this.field_cartesian_collision) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_cartesian_contact) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_q) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_q_d) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_dq) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_dq_d) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_ddq_d) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_theta) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_dtheta) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_tau_J) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_dtau_J) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_tau_J_d) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_K_F_ext_hat_K) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_elbow) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_elbow_d) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_elbow_c) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_delbow_c) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_ddelbow_c) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_joint_collision) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_joint_contact) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_O_F_ext_hat_K) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_O_dP_EE_d) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_O_ddP_O) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_O_dP_EE_c) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_O_ddP_EE_c) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_tau_ext_hat_filtered) {
  if(!w.float64(e)) return false;
  }
  if(!w.float64(this.field_m_ee)) return false;
  foreach(ref e; this.field_F_x_Cee) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_I_ee) {
  if(!w.float64(e)) return false;
  }
  if(!w.float64(this.field_m_load)) return false;
  foreach(ref e; this.field_F_x_Cload) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_I_load) {
  if(!w.float64(e)) return false;
  }
  if(!w.float64(this.field_m_total)) return false;
  foreach(ref e; this.field_F_x_Ctotal) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_I_total) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_O_T_EE) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_O_T_EE_d) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_O_T_EE_c) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_F_T_EE) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_F_T_NE) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_NE_T_EE) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_EE_T_K) {
  if(!w.float64(e)) return false;
  }
  if(!w.float64(this.field_time)) return false;
  if(!w.float64(this.field_control_command_success_rate)) return false;
  if(!w.integer(this.field_robot_mode)) return false;
  if(!this.field_current_errors.writeFields(w)) return false;
  if(!this.field_last_motion_errors.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/FrankaState.
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
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsFrankaState value) {
  value=Ros1Franka_msgsFrankaState.init;
  if(!Ros1Std_msgsHeader.readFields(r,arena,value.field_header)) return false;
  foreach(ref e; value.field_cartesian_collision) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_cartesian_contact) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_q) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_q_d) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_dq) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_dq_d) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_ddq_d) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_theta) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_dtheta) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_tau_J) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_dtau_J) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_tau_J_d) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_K_F_ext_hat_K) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_elbow) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_elbow_d) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_elbow_c) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_delbow_c) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_ddelbow_c) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_joint_collision) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_joint_contact) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_O_F_ext_hat_K) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_O_dP_EE_d) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_O_ddP_O) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_O_dP_EE_c) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_O_ddP_EE_c) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_tau_ext_hat_filtered) {
  if(!r.float64(e)) return false;
  }
  if(!r.float64(value.field_m_ee)) return false;
  foreach(ref e; value.field_F_x_Cee) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_I_ee) {
  if(!r.float64(e)) return false;
  }
  if(!r.float64(value.field_m_load)) return false;
  foreach(ref e; value.field_F_x_Cload) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_I_load) {
  if(!r.float64(e)) return false;
  }
  if(!r.float64(value.field_m_total)) return false;
  foreach(ref e; value.field_F_x_Ctotal) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_I_total) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_O_T_EE) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_O_T_EE_d) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_O_T_EE_c) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_F_T_EE) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_F_T_NE) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_NE_T_EE) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_EE_T_K) {
  if(!r.float64(e)) return false;
  }
  if(!r.float64(value.field_time)) return false;
  if(!r.float64(value.field_control_command_success_rate)) return false;
  if(!r.integer(value.field_robot_mode)) return false;
  if(!Ros1Franka_msgsErrors.readFields(r,arena,value.field_current_errors)) return false;
  if(!Ros1Franka_msgsErrors.readFields(r,arena,value.field_last_motion_errors)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/FrankaState value.
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
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/FrankaState value.
 /// @details Require the complete 2491..2619-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Franka_msgsFrankaState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsFrankaState value) {
  if(bytes.length<2491 || bytes.length>2619) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/SetCartesianImpedanceRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
/// is identified by UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsSetCartesianImpedanceRequest {
 /// @brief Maximum canonical extent of franka_msgs/SetCartesianImpedanceRequest in bytes.
 /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=48;
 /// @brief Canonical codec identity of franka_msgs/SetCartesianImpedanceRequest.
 /// @details Exact identity UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf";
 /// @brief Original ROS type name for franka_msgs/SetCartesianImpedanceRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/SetCartesianImpedanceRequest";
 /// @brief Selected original native identity for franka_msgs/SetCartesianImpedanceRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/SetCartesianImpedanceRequest.cartesian_stiffness: float64; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 double[6] field_cartesian_stiffness=0;
 /// @brief Append every canonical field of franka_msgs/SetCartesianImpedanceRequest.
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
 /// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  foreach(ref e; this.field_cartesian_stiffness) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/SetCartesianImpedanceRequest.
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
 /// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsSetCartesianImpedanceRequest value) {
  value=Ros1Franka_msgsSetCartesianImpedanceRequest.init;
  foreach(ref e; value.field_cartesian_stiffness) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/SetCartesianImpedanceRequest value.
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
 /// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/SetCartesianImpedanceRequest value.
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
 /// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsSetCartesianImpedanceRequest value) {
  if(bytes.length<48 || bytes.length>48) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/SetCartesianImpedanceResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsSetCartesianImpedanceResponse {
 /// @brief Maximum canonical extent of franka_msgs/SetCartesianImpedanceResponse in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/SetCartesianImpedanceResponse.
 /// @details Exact identity UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b";
 /// @brief Original ROS type name for franka_msgs/SetCartesianImpedanceResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/SetCartesianImpedanceResponse";
 /// @brief Selected original native identity for franka_msgs/SetCartesianImpedanceResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/SetCartesianImpedanceResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/SetCartesianImpedanceResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/SetCartesianImpedanceResponse.
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
 /// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/SetCartesianImpedanceResponse.
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
 /// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsSetCartesianImpedanceResponse value) {
  value=Ros1Franka_msgsSetCartesianImpedanceResponse.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/SetCartesianImpedanceResponse value.
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
 /// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/SetCartesianImpedanceResponse value.
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
 /// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsSetCartesianImpedanceResponse value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/SetEEFrameRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 128..128 bytes
/// and is identified by UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsSetEEFrameRequest {
 /// @brief Maximum canonical extent of franka_msgs/SetEEFrameRequest in bytes.
 /// @details The inclusive bound is 128 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=128;
 /// @brief Canonical codec identity of franka_msgs/SetEEFrameRequest.
 /// @details Exact identity UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc";
 /// @brief Original ROS type name for franka_msgs/SetEEFrameRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/SetEEFrameRequest";
 /// @brief Selected original native identity for franka_msgs/SetEEFrameRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/SetEEFrameRequest.NE_T_EE: float64; exactly 16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/d/API-CONTRACT.md
 double[16] field_NE_T_EE=0;
 /// @brief Append every canonical field of franka_msgs/SetEEFrameRequest.
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
 /// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  foreach(ref e; this.field_NE_T_EE) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/SetEEFrameRequest.
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
 /// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsSetEEFrameRequest value) {
  value=Ros1Franka_msgsSetEEFrameRequest.init;
  foreach(ref e; value.field_NE_T_EE) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/SetEEFrameRequest value.
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
 /// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/SetEEFrameRequest value.
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
 /// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsSetEEFrameRequest value) {
  if(bytes.length<128 || bytes.length>128) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/SetEEFrameResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsSetEEFrameResponse {
 /// @brief Maximum canonical extent of franka_msgs/SetEEFrameResponse in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/SetEEFrameResponse.
 /// @details Exact identity UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67";
 /// @brief Original ROS type name for franka_msgs/SetEEFrameResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/SetEEFrameResponse";
 /// @brief Selected original native identity for franka_msgs/SetEEFrameResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/SetEEFrameResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/SetEEFrameResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 /// NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/SetEEFrameResponse.
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
 /// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/SetEEFrameResponse.
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
 /// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsSetEEFrameResponse value) {
  value=Ros1Franka_msgsSetEEFrameResponse.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/SetEEFrameResponse value.
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
 /// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/SetEEFrameResponse value.
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
 /// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsSetEEFrameResponse value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/SetForceTorqueCollisionBehaviorRequest value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 208..208 bytes
/// and is identified by UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest {
 /// @brief Maximum canonical extent of franka_msgs/SetForceTorqueCollisionBehaviorRequest in bytes.
 /// @details The inclusive bound is 208 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=208;
 /// @brief Canonical codec identity of franka_msgs/SetForceTorqueCollisionBehaviorRequest.
 /// @details Exact identity UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5";
 /// @brief Original ROS type name for franka_msgs/SetForceTorqueCollisionBehaviorRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/SetForceTorqueCollisionBehaviorRequest";
 /// @brief Selected original native identity for franka_msgs/SetForceTorqueCollisionBehaviorRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_torque_thresholds_nominal: float64; exactly 7
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 double[7] field_lower_torque_thresholds_nominal=0;
 /// @brief franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_torque_thresholds_nominal: float64; exactly 7
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 double[7] field_upper_torque_thresholds_nominal=0;
 /// @brief franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_force_thresholds_nominal: float64; exactly 6
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 double[6] field_lower_force_thresholds_nominal=0;
 /// @brief franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_force_thresholds_nominal: float64; exactly 6
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 double[6] field_upper_force_thresholds_nominal=0;
 /// @brief Append every canonical field of franka_msgs/SetForceTorqueCollisionBehaviorRequest.
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
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
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
 /// @brief Read the ordered canonical fields of franka_msgs/SetForceTorqueCollisionBehaviorRequest.
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
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest value) {
  value=Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.init;
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
 /// @brief Encode one complete franka_msgs/SetForceTorqueCollisionBehaviorRequest value.
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
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/SetForceTorqueCollisionBehaviorRequest value.
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
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest value) {
  if(bytes.length<208 || bytes.length>208) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/SetForceTorqueCollisionBehaviorResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse {
 /// @brief Maximum canonical extent of franka_msgs/SetForceTorqueCollisionBehaviorResponse in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/SetForceTorqueCollisionBehaviorResponse.
 /// @details Exact identity UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5";
 /// @brief Original ROS type name for franka_msgs/SetForceTorqueCollisionBehaviorResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/SetForceTorqueCollisionBehaviorResponse";
 /// @brief Selected original native identity for franka_msgs/SetForceTorqueCollisionBehaviorResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/SetForceTorqueCollisionBehaviorResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/SetForceTorqueCollisionBehaviorResponse.error: string; each string is 0..256 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/SetForceTorqueCollisionBehaviorResponse.
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
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/SetForceTorqueCollisionBehaviorResponse.
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
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse value) {
  value=Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/SetForceTorqueCollisionBehaviorResponse value.
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
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/SetForceTorqueCollisionBehaviorResponse value.
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
 /// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/SetFullCollisionBehaviorRequest value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies 416..416 bytes
/// and is identified by UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsSetFullCollisionBehaviorRequest {
 /// @brief Maximum canonical extent of franka_msgs/SetFullCollisionBehaviorRequest in bytes.
 /// @details The inclusive bound is 416 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=416;
 /// @brief Canonical codec identity of franka_msgs/SetFullCollisionBehaviorRequest.
 /// @details Exact identity UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c";
 /// @brief Original ROS type name for franka_msgs/SetFullCollisionBehaviorRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/SetFullCollisionBehaviorRequest";
 /// @brief Selected original native identity for franka_msgs/SetFullCollisionBehaviorRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_acceleration: float64; exactly 7
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 double[7] field_lower_torque_thresholds_acceleration=0;
 /// @brief franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_acceleration: float64; exactly 7
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 double[7] field_upper_torque_thresholds_acceleration=0;
 /// @brief franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_nominal: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 double[7] field_lower_torque_thresholds_nominal=0;
 /// @brief franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_nominal: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 double[7] field_upper_torque_thresholds_nominal=0;
 /// @brief franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_acceleration: float64; exactly 6
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 double[6] field_lower_force_thresholds_acceleration=0;
 /// @brief franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_acceleration: float64; exactly 6
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 double[6] field_upper_force_thresholds_acceleration=0;
 /// @brief franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_nominal: float64; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 double[6] field_lower_force_thresholds_nominal=0;
 /// @brief franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_nominal: float64; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 double[6] field_upper_force_thresholds_nominal=0;
 /// @brief Append every canonical field of franka_msgs/SetFullCollisionBehaviorRequest.
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
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
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
 /// @brief Read the ordered canonical fields of franka_msgs/SetFullCollisionBehaviorRequest.
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
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsSetFullCollisionBehaviorRequest value) {
  value=Ros1Franka_msgsSetFullCollisionBehaviorRequest.init;
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
 /// @brief Encode one complete franka_msgs/SetFullCollisionBehaviorRequest value.
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
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/SetFullCollisionBehaviorRequest value.
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
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsSetFullCollisionBehaviorRequest value) {
  if(bytes.length<416 || bytes.length>416) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/SetFullCollisionBehaviorResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsSetFullCollisionBehaviorResponse {
 /// @brief Maximum canonical extent of franka_msgs/SetFullCollisionBehaviorResponse in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/SetFullCollisionBehaviorResponse.
 /// @details Exact identity UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2";
 /// @brief Original ROS type name for franka_msgs/SetFullCollisionBehaviorResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/SetFullCollisionBehaviorResponse";
 /// @brief Selected original native identity for franka_msgs/SetFullCollisionBehaviorResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/SetFullCollisionBehaviorResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/SetFullCollisionBehaviorResponse.error: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/SetFullCollisionBehaviorResponse.
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
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/SetFullCollisionBehaviorResponse.
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
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsSetFullCollisionBehaviorResponse value) {
  value=Ros1Franka_msgsSetFullCollisionBehaviorResponse.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/SetFullCollisionBehaviorResponse value.
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
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/SetFullCollisionBehaviorResponse value.
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
 /// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsSetFullCollisionBehaviorResponse value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/SetJointImpedanceRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 56..56 bytes and
/// is identified by UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsSetJointImpedanceRequest {
 /// @brief Maximum canonical extent of franka_msgs/SetJointImpedanceRequest in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=56;
 /// @brief Canonical codec identity of franka_msgs/SetJointImpedanceRequest.
 /// @details Exact identity UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53";
 /// @brief Original ROS type name for franka_msgs/SetJointImpedanceRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/SetJointImpedanceRequest";
 /// @brief Selected original native identity for franka_msgs/SetJointImpedanceRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/SetJointImpedanceRequest.joint_stiffness: float64; exactly 7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 double[7] field_joint_stiffness=0;
 /// @brief Append every canonical field of franka_msgs/SetJointImpedanceRequest.
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
 /// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  foreach(ref e; this.field_joint_stiffness) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/SetJointImpedanceRequest.
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
 /// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsSetJointImpedanceRequest value) {
  value=Ros1Franka_msgsSetJointImpedanceRequest.init;
  foreach(ref e; value.field_joint_stiffness) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/SetJointImpedanceRequest value.
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
 /// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/SetJointImpedanceRequest value.
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
 /// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsSetJointImpedanceRequest value) {
  if(bytes.length<56 || bytes.length>56) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/SetJointImpedanceResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsSetJointImpedanceResponse {
 /// @brief Maximum canonical extent of franka_msgs/SetJointImpedanceResponse in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/SetJointImpedanceResponse.
 /// @details Exact identity UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55";
 /// @brief Original ROS type name for franka_msgs/SetJointImpedanceResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/SetJointImpedanceResponse";
 /// @brief Selected original native identity for franka_msgs/SetJointImpedanceResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/SetJointImpedanceResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/SetJointImpedanceResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/SetJointImpedanceResponse.
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
 /// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/SetJointImpedanceResponse.
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
 /// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsSetJointImpedanceResponse value) {
  value=Ros1Franka_msgsSetJointImpedanceResponse.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/SetJointImpedanceResponse value.
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
 /// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/SetJointImpedanceResponse value.
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
 /// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsSetJointImpedanceResponse value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/SetKFrameRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 128..128 bytes
/// and is identified by UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsSetKFrameRequest {
 /// @brief Maximum canonical extent of franka_msgs/SetKFrameRequest in bytes.
 /// @details The inclusive bound is 128 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=128;
 /// @brief Canonical codec identity of franka_msgs/SetKFrameRequest.
 /// @details Exact identity UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446";
 /// @brief Original ROS type name for franka_msgs/SetKFrameRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/SetKFrameRequest";
 /// @brief Selected original native identity for franka_msgs/SetKFrameRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/SetKFrameRequest.EE_T_K: float64; exactly 16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/d/API-CONTRACT.md
 double[16] field_EE_T_K=0;
 /// @brief Append every canonical field of franka_msgs/SetKFrameRequest.
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
 /// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  foreach(ref e; this.field_EE_T_K) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/SetKFrameRequest.
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
 /// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsSetKFrameRequest value) {
  value=Ros1Franka_msgsSetKFrameRequest.init;
  foreach(ref e; value.field_EE_T_K) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/SetKFrameRequest value.
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
 /// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/SetKFrameRequest value.
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
 /// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsSetKFrameRequest value) {
  if(bytes.length<128 || bytes.length>128) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/SetKFrameResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsSetKFrameResponse {
 /// @brief Maximum canonical extent of franka_msgs/SetKFrameResponse in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/SetKFrameResponse.
 /// @details Exact identity UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443";
 /// @brief Original ROS type name for franka_msgs/SetKFrameResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/SetKFrameResponse";
 /// @brief Selected original native identity for franka_msgs/SetKFrameResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/SetKFrameResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/SetKFrameResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/SetKFrameResponse.
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
 /// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/SetKFrameResponse.
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
 /// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsSetKFrameResponse value) {
  value=Ros1Franka_msgsSetKFrameResponse.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/SetKFrameResponse value.
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
 /// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/SetKFrameResponse value.
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
 /// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsSetKFrameResponse value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/SetLoadRequest value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 104..104 bytes
/// and is identified by UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsSetLoadRequest {
 /// @brief Maximum canonical extent of franka_msgs/SetLoadRequest in bytes.
 /// @details The inclusive bound is 104 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=104;
 /// @brief Canonical codec identity of franka_msgs/SetLoadRequest.
 /// @details Exact identity UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5";
 /// @brief Original ROS type name for franka_msgs/SetLoadRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/SetLoadRequest";
 /// @brief Selected original native identity for franka_msgs/SetLoadRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/SetLoadRequest.mass: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 double field_mass=0;
 /// @brief franka_msgs/SetLoadRequest.F_x_center_load: float64; exactly 3 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 double[3] field_F_x_center_load=0;
 /// @brief franka_msgs/SetLoadRequest.load_inertia: float64; exactly 9 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 double[9] field_load_inertia=0;
 /// @brief Append every canonical field of franka_msgs/SetLoadRequest.
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
 /// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_mass)) return false;
  foreach(ref e; this.field_F_x_center_load) {
  if(!w.float64(e)) return false;
  }
  foreach(ref e; this.field_load_inertia) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/SetLoadRequest.
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
 /// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsSetLoadRequest value) {
  value=Ros1Franka_msgsSetLoadRequest.init;
  if(!r.float64(value.field_mass)) return false;
  foreach(ref e; value.field_F_x_center_load) {
  if(!r.float64(e)) return false;
  }
  foreach(ref e; value.field_load_inertia) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete franka_msgs/SetLoadRequest value.
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
 /// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/SetLoadRequest value.
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
 /// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsSetLoadRequest value) {
  if(bytes.length<104 || bytes.length>104) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 franka_msgs/SetLoadResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
/// is identified by UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Franka_msgsSetLoadResponse {
 /// @brief Maximum canonical extent of franka_msgs/SetLoadResponse in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of franka_msgs/SetLoadResponse.
 /// @details Exact identity UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3";
 /// @brief Original ROS type name for franka_msgs/SetLoadResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="franka_msgs/SetLoadResponse";
 /// @brief Selected original native identity for franka_msgs/SetLoadResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief franka_msgs/SetLoadResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief franka_msgs/SetLoadResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error=null;
 /// @brief Append every canonical field of franka_msgs/SetLoadResponse.
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
 /// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_error,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of franka_msgs/SetLoadResponse.
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
 /// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Franka_msgsSetLoadResponse value) {
  value=Ros1Franka_msgsSetLoadResponse.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_error,256)) return false;
  return true;
 }
 /// @brief Encode one complete franka_msgs/SetLoadResponse value.
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
 /// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete franka_msgs/SetLoadResponse value.
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
 /// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Franka_msgsSetLoadResponse value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
