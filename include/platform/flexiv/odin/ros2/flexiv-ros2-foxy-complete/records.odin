package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 2 flexiv_msgs/msg/JointPosVel value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 112..112 bytes and
// is identified by UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointPosVel :: struct {
 // @brief flexiv_msgs/msg/JointPosVel.positions: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
 field_positions: [7]f64,
 // @brief flexiv_msgs/msg/JointPosVel.velocities: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
 field_velocities: [7]f64,
}
// @brief Maximum canonical extent of flexiv_msgs/msg/JointPosVel in bytes.
// @details The inclusive bound is 112 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointPosVel_Maximum_Wire_Bytes :: 112
// @brief Canonical codec identity of flexiv_msgs/msg/JointPosVel.
// @details Exact identity UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointPosVel_Codec_Identity :: "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8"
// @brief Original ROS type name for flexiv_msgs/msg/JointPosVel.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointPosVel_Native_Type :: "flexiv_msgs/msg/JointPosVel"
// @brief Selected original native identity for flexiv_msgs/msg/JointPosVel.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointPosVel_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/msg/JointPosVel.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsMsgJointPosVel :: proc() -> Ros2Flexiv_msgsMsgJointPosVel {
 v: Ros2Flexiv_msgsMsgJointPosVel
 v.field_positions = [7]f64{0,0,0,0,0,0,0}
 v.field_velocities = [7]f64{0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of flexiv_msgs/msg/JointPosVel.
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
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsMsgJointPosVel :: proc(v: ^Ros2Flexiv_msgsMsgJointPosVel, w: ^Writer) -> bool {
 for e in v.field_positions {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_velocities {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/msg/JointPosVel.
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
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsMsgJointPosVel :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgJointPosVel,bool) {
 v:=init_Ros2Flexiv_msgsMsgJointPosVel()
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
// @brief Encode one complete flexiv_msgs/msg/JointPosVel value.
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
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsMsgJointPosVel :: proc(v: ^Ros2Flexiv_msgsMsgJointPosVel, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=112}
 if !write_Ros2Flexiv_msgsMsgJointPosVel(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=112}
 if !write_Ros2Flexiv_msgsMsgJointPosVel(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/msg/JointPosVel value.
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
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsMsgJointPosVel :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgJointPosVel,u32) {
 if len(bytes)<112 || len(bytes)>112 { return Ros2Flexiv_msgsMsgJointPosVel{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsMsgJointPosVel(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsMsgJointPosVel{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/msg/Mode value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode :: struct {
 // @brief flexiv_msgs/msg/Mode.mode: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
 field_mode: i8,
}
// @brief Maximum canonical extent of flexiv_msgs/msg/Mode in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of flexiv_msgs/msg/Mode.
// @details Exact identity UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_Codec_Identity :: "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f"
// @brief Original ROS type name for flexiv_msgs/msg/Mode.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_Native_Type :: "flexiv_msgs/msg/Mode"
// @brief Selected original native identity for flexiv_msgs/msg/Mode.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_Native_Identity :: ""
// @brief flexiv_msgs/msg/Mode.MODE_UNKNOWN: original int8 constant.
// @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_UNKNOWN :: i8(-1)
// @brief flexiv_msgs/msg/Mode.MODE_IDLE: original int8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_IDLE :: i8(0)
// @brief flexiv_msgs/msg/Mode.MODE_RT_JOINT_TORQUE: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_TORQUE :: i8(1)
// @brief flexiv_msgs/msg/Mode.MODE_RT_JOINT_POSITION: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_POSITION :: i8(2)
// @brief flexiv_msgs/msg/Mode.MODE_NRT_JOINT_POSITION: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_NRT_JOINT_POSITION :: i8(3)
// @brief flexiv_msgs/msg/Mode.MODE_NRT_PLAN_EXECUTION: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_NRT_PLAN_EXECUTION :: i8(4)
// @brief flexiv_msgs/msg/Mode.MODE_NRT_PRIMITIVE_EXECUTION: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_NRT_PRIMITIVE_EXECUTION :: i8(5)
// @brief flexiv_msgs/msg/Mode.MODE_RT_CARTESIAN_MOTION_FORCE_BASE: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_RT_CARTESIAN_MOTION_FORCE_BASE :: i8(6)
// @brief flexiv_msgs/msg/Mode.MODE_RT_CARTESIAN_MOTION_FORCE_TCP: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_RT_CARTESIAN_MOTION_FORCE_TCP :: i8(7)
// @brief flexiv_msgs/msg/Mode.MODE_NRT_CARTESIAN_MOTION_FORCE_BASE: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_NRT_CARTESIAN_MOTION_FORCE_BASE :: i8(8)
// @brief flexiv_msgs/msg/Mode.MODE_NRT_CARTESIAN_MOTION_FORCE_TCP: original int8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_NRT_CARTESIAN_MOTION_FORCE_TCP :: i8(9)
// @brief Construct the declared defaults of flexiv_msgs/msg/Mode.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsMsgMode :: proc() -> Ros2Flexiv_msgsMsgMode {
 v: Ros2Flexiv_msgsMsgMode
 v.field_mode = 0
 return v
}
// @brief Append every canonical field of flexiv_msgs/msg/Mode.
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
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsMsgMode :: proc(v: ^Ros2Flexiv_msgsMsgMode, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_mode),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/msg/Mode.
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
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsMsgMode :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgMode,bool) {
 v:=init_Ros2Flexiv_msgsMsgMode()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_mode=i8(b)
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/msg/Mode value.
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
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsMsgMode :: proc(v: ^Ros2Flexiv_msgsMsgMode, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Flexiv_msgsMsgMode(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Flexiv_msgsMsgMode(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/msg/Mode value.
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
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsMsgMode :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgMode,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Flexiv_msgsMsgMode{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsMsgMode(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsMsgMode{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Point value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and
// is identified by UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPoint :: struct {
 // @brief geometry_msgs/msg/Point.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgPoint; share/platform/ros/odin/API-CONTRACT.md
 field_x: f64,
 // @brief geometry_msgs/msg/Point.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgPoint; share/platform/ros/odin/API-CONTRACT.md
 field_y: f64,
 // @brief geometry_msgs/msg/Point.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgPoint; share/platform/ros/odin/API-CONTRACT.md
 field_z: f64,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Point in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPoint_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of geometry_msgs/msg/Point.
// @details Exact identity UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPoint_Codec_Identity :: "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
// @brief Original ROS type name for geometry_msgs/msg/Point.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPoint_Native_Type :: "geometry_msgs/msg/Point"
// @brief Selected original native identity for geometry_msgs/msg/Point.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPoint_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Point.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Geometry_msgsMsgPoint :: proc() -> Ros2Geometry_msgsMsgPoint {
 v: Ros2Geometry_msgsMsgPoint
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/Point.
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
// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgPoint :: proc(v: ^Ros2Geometry_msgsMsgPoint, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Point.
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
// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Geometry_msgsMsgPoint :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgPoint,bool) {
 v:=init_Ros2Geometry_msgsMsgPoint()
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
// @brief Encode one complete geometry_msgs/msg/Point value.
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
// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgPoint :: proc(v: ^Ros2Geometry_msgsMsgPoint, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Geometry_msgsMsgPoint(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Geometry_msgsMsgPoint(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/Point value.
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
// @see Ros2Geometry_msgsMsgPoint; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgPoint :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgPoint,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Geometry_msgsMsgPoint{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgPoint(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgPoint{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Quaternion value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes and
// is identified by UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgQuaternion :: struct {
 // @brief geometry_msgs/msg/Quaternion.x: float64.
 // @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
 // instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_x: f64,
 // @brief geometry_msgs/msg/Quaternion.y: float64.
 // @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
 // instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_y: f64,
 // @brief geometry_msgs/msg/Quaternion.z: float64.
 // @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
 // instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_z: f64,
 // @brief geometry_msgs/msg/Quaternion.w: float64.
 // @details Schema default 1.0. Encoding preserves the original field position and signedness; invalid bounds fail
 // instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_w: f64,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Quaternion in bytes.
// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgQuaternion_Maximum_Wire_Bytes :: 32
// @brief Canonical codec identity of geometry_msgs/msg/Quaternion.
// @details Exact identity UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgQuaternion_Codec_Identity :: "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
// @brief Original ROS type name for geometry_msgs/msg/Quaternion.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgQuaternion_Native_Type :: "geometry_msgs/msg/Quaternion"
// @brief Selected original native identity for geometry_msgs/msg/Quaternion.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgQuaternion_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Quaternion.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Geometry_msgsMsgQuaternion :: proc() -> Ros2Geometry_msgsMsgQuaternion {
 v: Ros2Geometry_msgsMsgQuaternion
 v.field_x = transmute(f64)u64(0x0)
 v.field_y = transmute(f64)u64(0x0)
 v.field_z = transmute(f64)u64(0x0)
 v.field_w = transmute(f64)u64(0x3ff0000000000000)
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/Quaternion.
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
// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgQuaternion :: proc(v: ^Ros2Geometry_msgsMsgQuaternion, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 if !put_float64(w,v.field_w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Quaternion.
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
// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Geometry_msgsMsgQuaternion :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgQuaternion,bool) {
 v:=init_Ros2Geometry_msgsMsgQuaternion()
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
// @brief Encode one complete geometry_msgs/msg/Quaternion value.
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
// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgQuaternion :: proc(v: ^Ros2Geometry_msgsMsgQuaternion, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=32}
 if !write_Ros2Geometry_msgsMsgQuaternion(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=32}
 if !write_Ros2Geometry_msgsMsgQuaternion(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/Quaternion value.
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
// @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgQuaternion :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgQuaternion,u32) {
 if len(bytes)<32 || len(bytes)>32 { return Ros2Geometry_msgsMsgQuaternion{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgQuaternion(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgQuaternion{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Pose value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes and
// is identified by UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPose :: struct {
 // @brief geometry_msgs/msg/Pose.position: geometry_msgs/msg/Point.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgPose; share/platform/ros/odin/API-CONTRACT.md
 field_position: Ros2Geometry_msgsMsgPoint,
 // @brief geometry_msgs/msg/Pose.orientation: geometry_msgs/msg/Quaternion.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgPose; share/platform/ros/odin/API-CONTRACT.md
 field_orientation: Ros2Geometry_msgsMsgQuaternion,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Pose in bytes.
// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgPose; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPose_Maximum_Wire_Bytes :: 56
// @brief Canonical codec identity of geometry_msgs/msg/Pose.
// @details Exact identity UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgPose; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPose_Codec_Identity :: "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
// @brief Original ROS type name for geometry_msgs/msg/Pose.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgPose; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPose_Native_Type :: "geometry_msgs/msg/Pose"
// @brief Selected original native identity for geometry_msgs/msg/Pose.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgPose; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPose_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Pose.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgPose; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Geometry_msgsMsgPose :: proc() -> Ros2Geometry_msgsMsgPose {
 v: Ros2Geometry_msgsMsgPose
 v.field_position = Ros2Geometry_msgsMsgPoint{}
 v.field_orientation = Ros2Geometry_msgsMsgQuaternion{}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/Pose.
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
// @see Ros2Geometry_msgsMsgPose; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgPose :: proc(v: ^Ros2Geometry_msgsMsgPose, w: ^Writer) -> bool {
 if !write_Ros2Geometry_msgsMsgPoint(&v.field_position,w) { return false }
 if !write_Ros2Geometry_msgsMsgQuaternion(&v.field_orientation,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Pose.
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
// @see Ros2Geometry_msgsMsgPose; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Geometry_msgsMsgPose :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgPose,bool) {
 v:=init_Ros2Geometry_msgsMsgPose()
 {
 b,ok:=read_Ros2Geometry_msgsMsgPoint(r,allocator); if !ok { return v,false }
 v.field_position=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgQuaternion(r,allocator); if !ok { return v,false }
 v.field_orientation=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/msg/Pose value.
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
// @see Ros2Geometry_msgsMsgPose; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgPose :: proc(v: ^Ros2Geometry_msgsMsgPose, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=56}
 if !write_Ros2Geometry_msgsMsgPose(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=56}
 if !write_Ros2Geometry_msgsMsgPose(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/Pose value.
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
// @see Ros2Geometry_msgsMsgPose; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgPose :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgPose,u32) {
 if len(bytes)<56 || len(bytes)>56 { return Ros2Geometry_msgsMsgPose{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgPose(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgPose{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Vector3 value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and
// is identified by UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgVector3 :: struct {
 // @brief geometry_msgs/msg/Vector3.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgVector3; share/platform/ros/odin/API-CONTRACT.md
 field_x: f64,
 // @brief geometry_msgs/msg/Vector3.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgVector3; share/platform/ros/odin/API-CONTRACT.md
 field_y: f64,
 // @brief geometry_msgs/msg/Vector3.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgVector3; share/platform/ros/odin/API-CONTRACT.md
 field_z: f64,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Vector3 in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgVector3_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of geometry_msgs/msg/Vector3.
// @details Exact identity UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgVector3_Codec_Identity :: "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
// @brief Original ROS type name for geometry_msgs/msg/Vector3.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgVector3_Native_Type :: "geometry_msgs/msg/Vector3"
// @brief Selected original native identity for geometry_msgs/msg/Vector3.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgVector3_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Vector3.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Geometry_msgsMsgVector3 :: proc() -> Ros2Geometry_msgsMsgVector3 {
 v: Ros2Geometry_msgsMsgVector3
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/Vector3.
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
// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgVector3 :: proc(v: ^Ros2Geometry_msgsMsgVector3, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Vector3.
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
// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Geometry_msgsMsgVector3 :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgVector3,bool) {
 v:=init_Ros2Geometry_msgsMsgVector3()
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
// @brief Encode one complete geometry_msgs/msg/Vector3 value.
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
// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgVector3 :: proc(v: ^Ros2Geometry_msgsMsgVector3, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Geometry_msgsMsgVector3(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Geometry_msgsMsgVector3(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/Vector3 value.
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
// @see Ros2Geometry_msgsMsgVector3; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgVector3 :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgVector3,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Geometry_msgsMsgVector3{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgVector3(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgVector3{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Accel value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
// is identified by UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccel :: struct {
 // @brief geometry_msgs/msg/Accel.linear: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
 field_linear: Ros2Geometry_msgsMsgVector3,
 // @brief geometry_msgs/msg/Accel.angular: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
 field_angular: Ros2Geometry_msgsMsgVector3,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Accel in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccel_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of geometry_msgs/msg/Accel.
// @details Exact identity UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccel_Codec_Identity :: "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde"
// @brief Original ROS type name for geometry_msgs/msg/Accel.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccel_Native_Type :: "geometry_msgs/msg/Accel"
// @brief Selected original native identity for geometry_msgs/msg/Accel.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccel_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Accel.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Geometry_msgsMsgAccel :: proc() -> Ros2Geometry_msgsMsgAccel {
 v: Ros2Geometry_msgsMsgAccel
 v.field_linear = Ros2Geometry_msgsMsgVector3{}
 v.field_angular = Ros2Geometry_msgsMsgVector3{}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/Accel.
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
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgAccel :: proc(v: ^Ros2Geometry_msgsMsgAccel, w: ^Writer) -> bool {
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_linear,w) { return false }
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_angular,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Accel.
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
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Geometry_msgsMsgAccel :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgAccel,bool) {
 v:=init_Ros2Geometry_msgsMsgAccel()
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_linear=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_angular=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/msg/Accel value.
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
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgAccel :: proc(v: ^Ros2Geometry_msgsMsgAccel, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros2Geometry_msgsMsgAccel(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros2Geometry_msgsMsgAccel(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/Accel value.
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
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgAccel :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgAccel,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros2Geometry_msgsMsgAccel{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgAccel(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgAccel{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Wrench value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
// is identified by UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrench :: struct {
 // @brief geometry_msgs/msg/Wrench.force: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
 field_force: Ros2Geometry_msgsMsgVector3,
 // @brief geometry_msgs/msg/Wrench.torque: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
 field_torque: Ros2Geometry_msgsMsgVector3,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Wrench in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrench_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of geometry_msgs/msg/Wrench.
// @details Exact identity UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrench_Codec_Identity :: "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6"
// @brief Original ROS type name for geometry_msgs/msg/Wrench.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrench_Native_Type :: "geometry_msgs/msg/Wrench"
// @brief Selected original native identity for geometry_msgs/msg/Wrench.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrench_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Wrench.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Geometry_msgsMsgWrench :: proc() -> Ros2Geometry_msgsMsgWrench {
 v: Ros2Geometry_msgsMsgWrench
 v.field_force = Ros2Geometry_msgsMsgVector3{}
 v.field_torque = Ros2Geometry_msgsMsgVector3{}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/Wrench.
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
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgWrench :: proc(v: ^Ros2Geometry_msgsMsgWrench, w: ^Writer) -> bool {
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_force,w) { return false }
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_torque,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Wrench.
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
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Geometry_msgsMsgWrench :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgWrench,bool) {
 v:=init_Ros2Geometry_msgsMsgWrench()
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_force=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_torque=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/msg/Wrench value.
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
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgWrench :: proc(v: ^Ros2Geometry_msgsMsgWrench, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros2Geometry_msgsMsgWrench(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros2Geometry_msgsMsgWrench(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/Wrench value.
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
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgWrench :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgWrench,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros2Geometry_msgsMsgWrench{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgWrench(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgWrench{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/msg/RobotStates value.
// @details All 16 declared fields are retained in source order. The canonical representation occupies 864..864 bytes
// and is identified by UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotStates :: struct {
 // @brief flexiv_msgs/msg/RobotStates.q: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_q: [7]f64,
 // @brief flexiv_msgs/msg/RobotStates.theta: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_theta: [7]f64,
 // @brief flexiv_msgs/msg/RobotStates.dq: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_dq: [7]f64,
 // @brief flexiv_msgs/msg/RobotStates.dtheta: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_dtheta: [7]f64,
 // @brief flexiv_msgs/msg/RobotStates.tau: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tau: [7]f64,
 // @brief flexiv_msgs/msg/RobotStates.tau_des: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tau_des: [7]f64,
 // @brief flexiv_msgs/msg/RobotStates.tau_dot: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tau_dot: [7]f64,
 // @brief flexiv_msgs/msg/RobotStates.tau_ext: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tau_ext: [7]f64,
 // @brief flexiv_msgs/msg/RobotStates.tcp_pose: geometry_msgs/msg/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tcp_pose: Ros2Geometry_msgsMsgPose,
 // @brief flexiv_msgs/msg/RobotStates.tcp_pose_des: geometry_msgs/msg/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tcp_pose_des: Ros2Geometry_msgsMsgPose,
 // @brief flexiv_msgs/msg/RobotStates.tcp_vel: geometry_msgs/msg/Accel.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tcp_vel: Ros2Geometry_msgsMsgAccel,
 // @brief flexiv_msgs/msg/RobotStates.cam_pose: geometry_msgs/msg/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_cam_pose: Ros2Geometry_msgsMsgPose,
 // @brief flexiv_msgs/msg/RobotStates.flange_pose: geometry_msgs/msg/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_flange_pose: Ros2Geometry_msgsMsgPose,
 // @brief flexiv_msgs/msg/RobotStates.ft_sensor_raw: geometry_msgs/msg/Wrench.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_ft_sensor_raw: Ros2Geometry_msgsMsgWrench,
 // @brief flexiv_msgs/msg/RobotStates.ext_wrench_tcp_frame: geometry_msgs/msg/Wrench.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_ext_wrench_tcp_frame: Ros2Geometry_msgsMsgWrench,
 // @brief flexiv_msgs/msg/RobotStates.ext_wrench_base_frame: geometry_msgs/msg/Wrench.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_ext_wrench_base_frame: Ros2Geometry_msgsMsgWrench,
}
// @brief Maximum canonical extent of flexiv_msgs/msg/RobotStates in bytes.
// @details The inclusive bound is 864 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotStates_Maximum_Wire_Bytes :: 864
// @brief Canonical codec identity of flexiv_msgs/msg/RobotStates.
// @details Exact identity UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotStates_Codec_Identity :: "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b"
// @brief Original ROS type name for flexiv_msgs/msg/RobotStates.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotStates_Native_Type :: "flexiv_msgs/msg/RobotStates"
// @brief Selected original native identity for flexiv_msgs/msg/RobotStates.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotStates_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/msg/RobotStates.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsMsgRobotStates :: proc() -> Ros2Flexiv_msgsMsgRobotStates {
 v: Ros2Flexiv_msgsMsgRobotStates
 v.field_q = [7]f64{0,0,0,0,0,0,0}
 v.field_theta = [7]f64{0,0,0,0,0,0,0}
 v.field_dq = [7]f64{0,0,0,0,0,0,0}
 v.field_dtheta = [7]f64{0,0,0,0,0,0,0}
 v.field_tau = [7]f64{0,0,0,0,0,0,0}
 v.field_tau_des = [7]f64{0,0,0,0,0,0,0}
 v.field_tau_dot = [7]f64{0,0,0,0,0,0,0}
 v.field_tau_ext = [7]f64{0,0,0,0,0,0,0}
 v.field_tcp_pose = Ros2Geometry_msgsMsgPose{}
 v.field_tcp_pose_des = Ros2Geometry_msgsMsgPose{}
 v.field_tcp_vel = Ros2Geometry_msgsMsgAccel{}
 v.field_cam_pose = Ros2Geometry_msgsMsgPose{}
 v.field_flange_pose = Ros2Geometry_msgsMsgPose{}
 v.field_ft_sensor_raw = Ros2Geometry_msgsMsgWrench{}
 v.field_ext_wrench_tcp_frame = Ros2Geometry_msgsMsgWrench{}
 v.field_ext_wrench_base_frame = Ros2Geometry_msgsMsgWrench{}
 return v
}
// @brief Append every canonical field of flexiv_msgs/msg/RobotStates.
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
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsMsgRobotStates :: proc(v: ^Ros2Flexiv_msgsMsgRobotStates, w: ^Writer) -> bool {
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
 if !write_Ros2Geometry_msgsMsgPose(&v.field_tcp_pose,w) { return false }
 if !write_Ros2Geometry_msgsMsgPose(&v.field_tcp_pose_des,w) { return false }
 if !write_Ros2Geometry_msgsMsgAccel(&v.field_tcp_vel,w) { return false }
 if !write_Ros2Geometry_msgsMsgPose(&v.field_cam_pose,w) { return false }
 if !write_Ros2Geometry_msgsMsgPose(&v.field_flange_pose,w) { return false }
 if !write_Ros2Geometry_msgsMsgWrench(&v.field_ft_sensor_raw,w) { return false }
 if !write_Ros2Geometry_msgsMsgWrench(&v.field_ext_wrench_tcp_frame,w) { return false }
 if !write_Ros2Geometry_msgsMsgWrench(&v.field_ext_wrench_base_frame,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/msg/RobotStates.
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
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsMsgRobotStates :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgRobotStates,bool) {
 v:=init_Ros2Flexiv_msgsMsgRobotStates()
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
 b,ok:=read_Ros2Geometry_msgsMsgPose(r,allocator); if !ok { return v,false }
 v.field_tcp_pose=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgPose(r,allocator); if !ok { return v,false }
 v.field_tcp_pose_des=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgAccel(r,allocator); if !ok { return v,false }
 v.field_tcp_vel=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgPose(r,allocator); if !ok { return v,false }
 v.field_cam_pose=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgPose(r,allocator); if !ok { return v,false }
 v.field_flange_pose=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgWrench(r,allocator); if !ok { return v,false }
 v.field_ft_sensor_raw=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgWrench(r,allocator); if !ok { return v,false }
 v.field_ext_wrench_tcp_frame=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgWrench(r,allocator); if !ok { return v,false }
 v.field_ext_wrench_base_frame=b
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/msg/RobotStates value.
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
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsMsgRobotStates :: proc(v: ^Ros2Flexiv_msgsMsgRobotStates, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=864}
 if !write_Ros2Flexiv_msgsMsgRobotStates(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=864}
 if !write_Ros2Flexiv_msgsMsgRobotStates(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/msg/RobotStates value.
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
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsMsgRobotStates :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgRobotStates,u32) {
 if len(bytes)<864 || len(bytes)>864 { return Ros2Flexiv_msgsMsgRobotStates{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsMsgRobotStates(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsMsgRobotStates{},reader.code }
 return value,0
}
