package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 1 flexiv_msgs/JointPosVel value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 112..112 bytes and
// is identified by UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsJointPosVel :: struct {
 // @brief flexiv_msgs/JointPosVel.positions: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/odin/API-CONTRACT.md
 field_positions: [7]f64,
 // @brief flexiv_msgs/JointPosVel.velocities: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/odin/API-CONTRACT.md
 field_velocities: [7]f64,
}
// @brief Maximum canonical extent of flexiv_msgs/JointPosVel in bytes.
// @details The inclusive bound is 112 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsJointPosVel_Maximum_Wire_Bytes :: 112
// @brief Canonical codec identity of flexiv_msgs/JointPosVel.
// @details Exact identity UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsJointPosVel_Codec_Identity :: "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa"
// @brief Original ROS type name for flexiv_msgs/JointPosVel.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsJointPosVel_Native_Type :: "flexiv_msgs/JointPosVel"
// @brief Selected original native identity for flexiv_msgs/JointPosVel.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsJointPosVel_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/JointPosVel.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Flexiv_msgsJointPosVel :: proc() -> Ros1Flexiv_msgsJointPosVel {
 v: Ros1Flexiv_msgsJointPosVel
 v.field_positions = [7]f64{0,0,0,0,0,0,0}
 v.field_velocities = [7]f64{0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of flexiv_msgs/JointPosVel.
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
// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Flexiv_msgsJointPosVel :: proc(v: ^Ros1Flexiv_msgsJointPosVel, w: ^Writer) -> bool {
 for e in v.field_positions {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_velocities {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/JointPosVel.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent
// enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Flexiv_msgsJointPosVel :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Flexiv_msgsJointPosVel,bool) {
 v:=init_Ros1Flexiv_msgsJointPosVel()
 for &e in v.field_positions {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_velocities {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/JointPosVel value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Flexiv_msgsJointPosVel :: proc(v: ^Ros1Flexiv_msgsJointPosVel, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=112}
 if !write_Ros1Flexiv_msgsJointPosVel(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=112}
 if !write_Ros1Flexiv_msgsJointPosVel(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/JointPosVel value.
// @details Require the complete 112..112-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Flexiv_msgsJointPosVel; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Flexiv_msgsJointPosVel :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Flexiv_msgsJointPosVel,u32) {
 if len(bytes)<112 || len(bytes)>112 { return Ros1Flexiv_msgsJointPosVel{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Flexiv_msgsJointPosVel(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Flexiv_msgsJointPosVel{},reader.code }
 return value,0
}
// @brief Complete ROS 1 flexiv_msgs/Mode value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode :: struct {
 // @brief flexiv_msgs/Mode.mode: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
 field_mode: i8,
}
// @brief Maximum canonical extent of flexiv_msgs/Mode in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of flexiv_msgs/Mode.
// @details Exact identity UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_Codec_Identity :: "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422"
// @brief Original ROS type name for flexiv_msgs/Mode.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_Native_Type :: "flexiv_msgs/Mode"
// @brief Selected original native identity for flexiv_msgs/Mode.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_Native_Identity :: ""
// @brief flexiv_msgs/Mode.MODE_UNKNOWN: original int8 constant.
// @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_MODE_UNKNOWN :: i8(-1)
// @brief flexiv_msgs/Mode.MODE_IDLE: original int8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_MODE_IDLE :: i8(0)
// @brief flexiv_msgs/Mode.MODE_RT_JOINT_TORQUE: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_MODE_RT_JOINT_TORQUE :: i8(1)
// @brief flexiv_msgs/Mode.MODE_RT_JOINT_POSITION: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_MODE_RT_JOINT_POSITION :: i8(2)
// @brief flexiv_msgs/Mode.MODE_NRT_JOINT_POSITION: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_MODE_NRT_JOINT_POSITION :: i8(3)
// @brief flexiv_msgs/Mode.MODE_NRT_PLAN_EXECUTION: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_MODE_NRT_PLAN_EXECUTION :: i8(4)
// @brief flexiv_msgs/Mode.MODE_NRT_PRIMITIVE_EXECUTION: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_MODE_NRT_PRIMITIVE_EXECUTION :: i8(5)
// @brief flexiv_msgs/Mode.MODE_RT_CARTESIAN_MOTION_FORCE_BASE: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_MODE_RT_CARTESIAN_MOTION_FORCE_BASE :: i8(6)
// @brief flexiv_msgs/Mode.MODE_RT_CARTESIAN_MOTION_FORCE_TCP: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_MODE_RT_CARTESIAN_MOTION_FORCE_TCP :: i8(7)
// @brief flexiv_msgs/Mode.MODE_NRT_CARTESIAN_MOTION_FORCE_BASE: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_MODE_NRT_CARTESIAN_MOTION_FORCE_BASE :: i8(8)
// @brief flexiv_msgs/Mode.MODE_NRT_CARTESIAN_MOTION_FORCE_TCP: original int8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsMode_MODE_NRT_CARTESIAN_MOTION_FORCE_TCP :: i8(9)
// @brief Construct the declared defaults of flexiv_msgs/Mode.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Flexiv_msgsMode :: proc() -> Ros1Flexiv_msgsMode {
 v: Ros1Flexiv_msgsMode
 v.field_mode = 0
 return v
}
// @brief Append every canonical field of flexiv_msgs/Mode.
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
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Flexiv_msgsMode :: proc(v: ^Ros1Flexiv_msgsMode, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_mode),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/Mode.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent
// enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Flexiv_msgsMode :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Flexiv_msgsMode,bool) {
 v:=init_Ros1Flexiv_msgsMode()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_mode=i8(b)
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/Mode value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Flexiv_msgsMode :: proc(v: ^Ros1Flexiv_msgsMode, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Flexiv_msgsMode(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Flexiv_msgsMode(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/Mode value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Flexiv_msgsMode; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Flexiv_msgsMode :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Flexiv_msgsMode,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Flexiv_msgsMode{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Flexiv_msgsMode(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Flexiv_msgsMode{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Point value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and
// is identified by UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoint :: struct {
 // @brief geometry_msgs/Point.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
 field_x: f64,
 // @brief geometry_msgs/Point.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
 field_y: f64,
 // @brief geometry_msgs/Point.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
 field_z: f64,
}
// @brief Maximum canonical extent of geometry_msgs/Point in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoint_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of geometry_msgs/Point.
// @details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoint_Codec_Identity :: "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
// @brief Original ROS type name for geometry_msgs/Point.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoint_Native_Type :: "geometry_msgs/Point"
// @brief Selected original native identity for geometry_msgs/Point.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoint_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Point.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Geometry_msgsPoint :: proc() -> Ros1Geometry_msgsPoint {
 v: Ros1Geometry_msgsPoint
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 return v
}
// @brief Append every canonical field of geometry_msgs/Point.
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
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsPoint :: proc(v: ^Ros1Geometry_msgsPoint, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Point.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent
// enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Geometry_msgsPoint :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPoint,bool) {
 v:=init_Ros1Geometry_msgsPoint()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_x=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_y=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_z=f64(b)
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/Point value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Geometry_msgsPoint :: proc(v: ^Ros1Geometry_msgsPoint, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros1Geometry_msgsPoint(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros1Geometry_msgsPoint(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/Point value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Geometry_msgsPoint :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPoint,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros1Geometry_msgsPoint{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsPoint(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsPoint{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Quaternion value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes and
// is identified by UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsQuaternion :: struct {
 // @brief geometry_msgs/Quaternion.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_x: f64,
 // @brief geometry_msgs/Quaternion.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_y: f64,
 // @brief geometry_msgs/Quaternion.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_z: f64,
 // @brief geometry_msgs/Quaternion.w: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_w: f64,
}
// @brief Maximum canonical extent of geometry_msgs/Quaternion in bytes.
// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsQuaternion_Maximum_Wire_Bytes :: 32
// @brief Canonical codec identity of geometry_msgs/Quaternion.
// @details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsQuaternion_Codec_Identity :: "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
// @brief Original ROS type name for geometry_msgs/Quaternion.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsQuaternion_Native_Type :: "geometry_msgs/Quaternion"
// @brief Selected original native identity for geometry_msgs/Quaternion.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsQuaternion_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Quaternion.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Geometry_msgsQuaternion :: proc() -> Ros1Geometry_msgsQuaternion {
 v: Ros1Geometry_msgsQuaternion
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_w = 0
 return v
}
// @brief Append every canonical field of geometry_msgs/Quaternion.
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
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsQuaternion :: proc(v: ^Ros1Geometry_msgsQuaternion, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 if !put_float64(w,v.field_w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Quaternion.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent
// enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Geometry_msgsQuaternion :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsQuaternion,bool) {
 v:=init_Ros1Geometry_msgsQuaternion()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_x=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_y=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_z=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_w=f64(b)
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/Quaternion value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Geometry_msgsQuaternion :: proc(v: ^Ros1Geometry_msgsQuaternion, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=32}
 if !write_Ros1Geometry_msgsQuaternion(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=32}
 if !write_Ros1Geometry_msgsQuaternion(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/Quaternion value.
// @details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Geometry_msgsQuaternion :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsQuaternion,u32) {
 if len(bytes)<32 || len(bytes)>32 { return Ros1Geometry_msgsQuaternion{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsQuaternion(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsQuaternion{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Pose value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes and
// is identified by UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPose :: struct {
 // @brief geometry_msgs/Pose.position: geometry_msgs/Point.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
 field_position: Ros1Geometry_msgsPoint,
 // @brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
 field_orientation: Ros1Geometry_msgsQuaternion,
}
// @brief Maximum canonical extent of geometry_msgs/Pose in bytes.
// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPose_Maximum_Wire_Bytes :: 56
// @brief Canonical codec identity of geometry_msgs/Pose.
// @details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPose_Codec_Identity :: "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
// @brief Original ROS type name for geometry_msgs/Pose.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPose_Native_Type :: "geometry_msgs/Pose"
// @brief Selected original native identity for geometry_msgs/Pose.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPose_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Pose.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Geometry_msgsPose :: proc() -> Ros1Geometry_msgsPose {
 v: Ros1Geometry_msgsPose
 v.field_position = Ros1Geometry_msgsPoint{}
 v.field_orientation = Ros1Geometry_msgsQuaternion{}
 return v
}
// @brief Append every canonical field of geometry_msgs/Pose.
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
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsPose :: proc(v: ^Ros1Geometry_msgsPose, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsPoint(&v.field_position,w) { return false }
 if !write_Ros1Geometry_msgsQuaternion(&v.field_orientation,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Pose.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent
// enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Geometry_msgsPose :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPose,bool) {
 v:=init_Ros1Geometry_msgsPose()
 {
 b,ok:=read_Ros1Geometry_msgsPoint(r,allocator); if !ok { return v,false }
 v.field_position=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsQuaternion(r,allocator); if !ok { return v,false }
 v.field_orientation=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/Pose value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Geometry_msgsPose :: proc(v: ^Ros1Geometry_msgsPose, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=56}
 if !write_Ros1Geometry_msgsPose(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=56}
 if !write_Ros1Geometry_msgsPose(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/Pose value.
// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Geometry_msgsPose :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPose,u32) {
 if len(bytes)<56 || len(bytes)>56 { return Ros1Geometry_msgsPose{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsPose(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsPose{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Vector3 value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and
// is identified by UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsVector3 :: struct {
 // @brief geometry_msgs/Vector3.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
 field_x: f64,
 // @brief geometry_msgs/Vector3.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
 field_y: f64,
 // @brief geometry_msgs/Vector3.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
 field_z: f64,
}
// @brief Maximum canonical extent of geometry_msgs/Vector3 in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsVector3_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of geometry_msgs/Vector3.
// @details Exact identity UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsVector3_Codec_Identity :: "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
// @brief Original ROS type name for geometry_msgs/Vector3.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsVector3_Native_Type :: "geometry_msgs/Vector3"
// @brief Selected original native identity for geometry_msgs/Vector3.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsVector3_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Vector3.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Geometry_msgsVector3 :: proc() -> Ros1Geometry_msgsVector3 {
 v: Ros1Geometry_msgsVector3
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 return v
}
// @brief Append every canonical field of geometry_msgs/Vector3.
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
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsVector3 :: proc(v: ^Ros1Geometry_msgsVector3, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Vector3.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent
// enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Geometry_msgsVector3 :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsVector3,bool) {
 v:=init_Ros1Geometry_msgsVector3()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_x=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_y=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_z=f64(b)
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/Vector3 value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Geometry_msgsVector3 :: proc(v: ^Ros1Geometry_msgsVector3, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros1Geometry_msgsVector3(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros1Geometry_msgsVector3(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/Vector3 value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Geometry_msgsVector3 :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsVector3,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros1Geometry_msgsVector3{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsVector3(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsVector3{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Accel value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
// is identified by UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsAccel :: struct {
 // @brief geometry_msgs/Accel.linear: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsAccel; share/platform/ros/odin/API-CONTRACT.md
 field_linear: Ros1Geometry_msgsVector3,
 // @brief geometry_msgs/Accel.angular: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsAccel; share/platform/ros/odin/API-CONTRACT.md
 field_angular: Ros1Geometry_msgsVector3,
}
// @brief Maximum canonical extent of geometry_msgs/Accel in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsAccel; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsAccel_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of geometry_msgs/Accel.
// @details Exact identity UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsAccel; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsAccel_Codec_Identity :: "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed"
// @brief Original ROS type name for geometry_msgs/Accel.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsAccel; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsAccel_Native_Type :: "geometry_msgs/Accel"
// @brief Selected original native identity for geometry_msgs/Accel.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsAccel; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsAccel_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Accel.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsAccel; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Geometry_msgsAccel :: proc() -> Ros1Geometry_msgsAccel {
 v: Ros1Geometry_msgsAccel
 v.field_linear = Ros1Geometry_msgsVector3{}
 v.field_angular = Ros1Geometry_msgsVector3{}
 return v
}
// @brief Append every canonical field of geometry_msgs/Accel.
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
// @see Ros1Geometry_msgsAccel; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsAccel :: proc(v: ^Ros1Geometry_msgsAccel, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsVector3(&v.field_linear,w) { return false }
 if !write_Ros1Geometry_msgsVector3(&v.field_angular,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Accel.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent
// enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsAccel; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Geometry_msgsAccel :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsAccel,bool) {
 v:=init_Ros1Geometry_msgsAccel()
 {
 b,ok:=read_Ros1Geometry_msgsVector3(r,allocator); if !ok { return v,false }
 v.field_linear=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsVector3(r,allocator); if !ok { return v,false }
 v.field_angular=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/Accel value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsAccel; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Geometry_msgsAccel :: proc(v: ^Ros1Geometry_msgsAccel, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros1Geometry_msgsAccel(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros1Geometry_msgsAccel(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/Accel value.
// @details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsAccel; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Geometry_msgsAccel :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsAccel,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros1Geometry_msgsAccel{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsAccel(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsAccel{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Wrench value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
// is identified by UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsWrench :: struct {
 // @brief geometry_msgs/Wrench.force: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
 field_force: Ros1Geometry_msgsVector3,
 // @brief geometry_msgs/Wrench.torque: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
 field_torque: Ros1Geometry_msgsVector3,
}
// @brief Maximum canonical extent of geometry_msgs/Wrench in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsWrench_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of geometry_msgs/Wrench.
// @details Exact identity UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsWrench_Codec_Identity :: "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3"
// @brief Original ROS type name for geometry_msgs/Wrench.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsWrench_Native_Type :: "geometry_msgs/Wrench"
// @brief Selected original native identity for geometry_msgs/Wrench.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsWrench_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Wrench.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Geometry_msgsWrench :: proc() -> Ros1Geometry_msgsWrench {
 v: Ros1Geometry_msgsWrench
 v.field_force = Ros1Geometry_msgsVector3{}
 v.field_torque = Ros1Geometry_msgsVector3{}
 return v
}
// @brief Append every canonical field of geometry_msgs/Wrench.
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
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsWrench :: proc(v: ^Ros1Geometry_msgsWrench, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsVector3(&v.field_force,w) { return false }
 if !write_Ros1Geometry_msgsVector3(&v.field_torque,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Wrench.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent
// enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Geometry_msgsWrench :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsWrench,bool) {
 v:=init_Ros1Geometry_msgsWrench()
 {
 b,ok:=read_Ros1Geometry_msgsVector3(r,allocator); if !ok { return v,false }
 v.field_force=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsVector3(r,allocator); if !ok { return v,false }
 v.field_torque=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/Wrench value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Geometry_msgsWrench :: proc(v: ^Ros1Geometry_msgsWrench, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros1Geometry_msgsWrench(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros1Geometry_msgsWrench(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/Wrench value.
// @details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Geometry_msgsWrench :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsWrench,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros1Geometry_msgsWrench{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsWrench(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsWrench{},reader.code }
 return value,0
}
// @brief Complete ROS 1 flexiv_msgs/RobotStates value.
// @details All 16 declared fields are retained in source order. The canonical representation occupies 864..864 bytes
// and is identified by UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsRobotStates :: struct {
 // @brief flexiv_msgs/RobotStates.q: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_q: [7]f64,
 // @brief flexiv_msgs/RobotStates.theta: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_theta: [7]f64,
 // @brief flexiv_msgs/RobotStates.dq: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_dq: [7]f64,
 // @brief flexiv_msgs/RobotStates.dtheta: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_dtheta: [7]f64,
 // @brief flexiv_msgs/RobotStates.tau: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tau: [7]f64,
 // @brief flexiv_msgs/RobotStates.tau_des: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tau_des: [7]f64,
 // @brief flexiv_msgs/RobotStates.tau_dot: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tau_dot: [7]f64,
 // @brief flexiv_msgs/RobotStates.tau_ext: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tau_ext: [7]f64,
 // @brief flexiv_msgs/RobotStates.tcp_pose: geometry_msgs/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tcp_pose: Ros1Geometry_msgsPose,
 // @brief flexiv_msgs/RobotStates.tcp_pose_des: geometry_msgs/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tcp_pose_des: Ros1Geometry_msgsPose,
 // @brief flexiv_msgs/RobotStates.tcp_vel: geometry_msgs/Accel.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tcp_vel: Ros1Geometry_msgsAccel,
 // @brief flexiv_msgs/RobotStates.cam_pose: geometry_msgs/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_cam_pose: Ros1Geometry_msgsPose,
 // @brief flexiv_msgs/RobotStates.flange_pose: geometry_msgs/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_flange_pose: Ros1Geometry_msgsPose,
 // @brief flexiv_msgs/RobotStates.ft_sensor_raw: geometry_msgs/Wrench.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_ft_sensor_raw: Ros1Geometry_msgsWrench,
 // @brief flexiv_msgs/RobotStates.ext_wrench_tcp_frame: geometry_msgs/Wrench.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_ext_wrench_tcp_frame: Ros1Geometry_msgsWrench,
 // @brief flexiv_msgs/RobotStates.ext_wrench_base_frame: geometry_msgs/Wrench.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_ext_wrench_base_frame: Ros1Geometry_msgsWrench,
}
// @brief Maximum canonical extent of flexiv_msgs/RobotStates in bytes.
// @details The inclusive bound is 864 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsRobotStates_Maximum_Wire_Bytes :: 864
// @brief Canonical codec identity of flexiv_msgs/RobotStates.
// @details Exact identity UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsRobotStates_Codec_Identity :: "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8"
// @brief Original ROS type name for flexiv_msgs/RobotStates.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsRobotStates_Native_Type :: "flexiv_msgs/RobotStates"
// @brief Selected original native identity for flexiv_msgs/RobotStates.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
Ros1Flexiv_msgsRobotStates_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/RobotStates.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Flexiv_msgsRobotStates :: proc() -> Ros1Flexiv_msgsRobotStates {
 v: Ros1Flexiv_msgsRobotStates
 v.field_q = [7]f64{0,0,0,0,0,0,0}
 v.field_theta = [7]f64{0,0,0,0,0,0,0}
 v.field_dq = [7]f64{0,0,0,0,0,0,0}
 v.field_dtheta = [7]f64{0,0,0,0,0,0,0}
 v.field_tau = [7]f64{0,0,0,0,0,0,0}
 v.field_tau_des = [7]f64{0,0,0,0,0,0,0}
 v.field_tau_dot = [7]f64{0,0,0,0,0,0,0}
 v.field_tau_ext = [7]f64{0,0,0,0,0,0,0}
 v.field_tcp_pose = Ros1Geometry_msgsPose{}
 v.field_tcp_pose_des = Ros1Geometry_msgsPose{}
 v.field_tcp_vel = Ros1Geometry_msgsAccel{}
 v.field_cam_pose = Ros1Geometry_msgsPose{}
 v.field_flange_pose = Ros1Geometry_msgsPose{}
 v.field_ft_sensor_raw = Ros1Geometry_msgsWrench{}
 v.field_ext_wrench_tcp_frame = Ros1Geometry_msgsWrench{}
 v.field_ext_wrench_base_frame = Ros1Geometry_msgsWrench{}
 return v
}
// @brief Append every canonical field of flexiv_msgs/RobotStates.
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
// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Flexiv_msgsRobotStates :: proc(v: ^Ros1Flexiv_msgsRobotStates, w: ^Writer) -> bool {
 for e in v.field_q {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_theta {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_dq {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_dtheta {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_tau {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_tau_des {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_tau_dot {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_tau_ext {
 if !put_float64(w,e) { return false }
 }
 if !write_Ros1Geometry_msgsPose(&v.field_tcp_pose,w) { return false }
 if !write_Ros1Geometry_msgsPose(&v.field_tcp_pose_des,w) { return false }
 if !write_Ros1Geometry_msgsAccel(&v.field_tcp_vel,w) { return false }
 if !write_Ros1Geometry_msgsPose(&v.field_cam_pose,w) { return false }
 if !write_Ros1Geometry_msgsPose(&v.field_flange_pose,w) { return false }
 if !write_Ros1Geometry_msgsWrench(&v.field_ft_sensor_raw,w) { return false }
 if !write_Ros1Geometry_msgsWrench(&v.field_ext_wrench_tcp_frame,w) { return false }
 if !write_Ros1Geometry_msgsWrench(&v.field_ext_wrench_base_frame,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/RobotStates.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent
// enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Flexiv_msgsRobotStates :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Flexiv_msgsRobotStates,bool) {
 v:=init_Ros1Flexiv_msgsRobotStates()
 for &e in v.field_q {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_theta {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_dq {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_dtheta {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_tau {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_tau_des {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_tau_dot {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_tau_ext {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=read_Ros1Geometry_msgsPose(r,allocator); if !ok { return v,false }
 v.field_tcp_pose=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsPose(r,allocator); if !ok { return v,false }
 v.field_tcp_pose_des=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsAccel(r,allocator); if !ok { return v,false }
 v.field_tcp_vel=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsPose(r,allocator); if !ok { return v,false }
 v.field_cam_pose=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsPose(r,allocator); if !ok { return v,false }
 v.field_flange_pose=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsWrench(r,allocator); if !ok { return v,false }
 v.field_ft_sensor_raw=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsWrench(r,allocator); if !ok { return v,false }
 v.field_ext_wrench_tcp_frame=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsWrench(r,allocator); if !ok { return v,false }
 v.field_ext_wrench_base_frame=b
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/RobotStates value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Flexiv_msgsRobotStates :: proc(v: ^Ros1Flexiv_msgsRobotStates, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=864}
 if !write_Ros1Flexiv_msgsRobotStates(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=864}
 if !write_Ros1Flexiv_msgsRobotStates(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/RobotStates value.
// @details Require the complete 864..864-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Flexiv_msgsRobotStates; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Flexiv_msgsRobotStates :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Flexiv_msgsRobotStates,u32) {
 if len(bytes)<864 || len(bytes)>864 { return Ros1Flexiv_msgsRobotStates{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Flexiv_msgsRobotStates(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Flexiv_msgsRobotStates{},reader.code }
 return value,0
}
