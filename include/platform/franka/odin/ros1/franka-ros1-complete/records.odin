package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 1 franka_example_controllers/JointTorqueComparison value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 176..176 bytes and
// is identified by UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_example_controllersJointTorqueComparison :: struct {
 // @brief franka_example_controllers/JointTorqueComparison.tau_error: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/odin/API-CONTRACT.md
 field_tau_error: [7]f64,
 // @brief franka_example_controllers/JointTorqueComparison.tau_commanded: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/odin/API-CONTRACT.md
 field_tau_commanded: [7]f64,
 // @brief franka_example_controllers/JointTorqueComparison.tau_measured: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/odin/API-CONTRACT.md
 field_tau_measured: [7]f64,
 // @brief franka_example_controllers/JointTorqueComparison.root_mean_square_error: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/odin/API-CONTRACT.md
 field_root_mean_square_error: f64,
}
// @brief Maximum canonical extent of franka_example_controllers/JointTorqueComparison in bytes.
// @details The inclusive bound is 176 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_example_controllersJointTorqueComparison_Maximum_Wire_Bytes :: 176
// @brief Canonical codec identity of franka_example_controllers/JointTorqueComparison.
// @details Exact identity UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_example_controllersJointTorqueComparison_Codec_Identity ::
        "UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254"
// @brief Original ROS type name for franka_example_controllers/JointTorqueComparison.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_example_controllersJointTorqueComparison_Native_Type :: "franka_example_controllers/JointTorqueComparison"
// @brief Selected original native identity for franka_example_controllers/JointTorqueComparison.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_example_controllersJointTorqueComparison_Native_Identity :: ""
// @brief Construct the declared defaults of franka_example_controllers/JointTorqueComparison.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_example_controllersJointTorqueComparison :: proc() -> Ros1Franka_example_controllersJointTorqueComparison {
 v: Ros1Franka_example_controllersJointTorqueComparison
 v.field_tau_error = [7]f64{0,0,0,0,0,0,0}
 v.field_tau_commanded = [7]f64{0,0,0,0,0,0,0}
 v.field_tau_measured = [7]f64{0,0,0,0,0,0,0}
 v.field_root_mean_square_error = 0
 return v
}
// @brief Append every canonical field of franka_example_controllers/JointTorqueComparison.
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
// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_example_controllersJointTorqueComparison :: proc(v: ^Ros1Franka_example_controllersJointTorqueComparison, w:
        ^Writer) -> bool {
 for e in v.field_tau_error {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_tau_commanded {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_tau_measured {
 if !put_float64(w,e) { return false }
 }
 if !put_float64(w,v.field_root_mean_square_error) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_example_controllers/JointTorqueComparison.
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
// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_example_controllersJointTorqueComparison :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros1Franka_example_controllersJointTorqueComparison,bool) {
 v:=init_Ros1Franka_example_controllersJointTorqueComparison()
 for &e in v.field_tau_error {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_tau_commanded {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_tau_measured {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_root_mean_square_error=f64(b)
 }
 return v,true
}
// @brief Encode one complete franka_example_controllers/JointTorqueComparison value.
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
// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_example_controllersJointTorqueComparison :: proc(v: ^Ros1Franka_example_controllersJointTorqueComparison, output:
        []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=176}
 if !write_Ros1Franka_example_controllersJointTorqueComparison(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=176}
 if !write_Ros1Franka_example_controllersJointTorqueComparison(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_example_controllers/JointTorqueComparison value.
// @details Require the complete 176..176-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_example_controllersJointTorqueComparison; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_example_controllersJointTorqueComparison :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros1Franka_example_controllersJointTorqueComparison,u32) {
 if len(bytes)<176 || len(bytes)>176 { return Ros1Franka_example_controllersJointTorqueComparison{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_example_controllersJointTorqueComparison(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_example_controllersJointTorqueComparison{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_gripper/GraspEpsilon value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
// is identified by UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspEpsilon :: struct {
 // @brief franka_gripper/GraspEpsilon.inner: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
 field_inner: f64,
 // @brief franka_gripper/GraspEpsilon.outer: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
 field_outer: f64,
}
// @brief Maximum canonical extent of franka_gripper/GraspEpsilon in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspEpsilon_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of franka_gripper/GraspEpsilon.
// @details Exact identity UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspEpsilon_Codec_Identity :: "UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9"
// @brief Original ROS type name for franka_gripper/GraspEpsilon.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspEpsilon_Native_Type :: "franka_gripper/GraspEpsilon"
// @brief Selected original native identity for franka_gripper/GraspEpsilon.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspEpsilon_Native_Identity :: ""
// @brief Construct the declared defaults of franka_gripper/GraspEpsilon.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_gripperGraspEpsilon :: proc() -> Ros1Franka_gripperGraspEpsilon {
 v: Ros1Franka_gripperGraspEpsilon
 v.field_inner = 0
 v.field_outer = 0
 return v
}
// @brief Append every canonical field of franka_gripper/GraspEpsilon.
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
// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_gripperGraspEpsilon :: proc(v: ^Ros1Franka_gripperGraspEpsilon, w: ^Writer) -> bool {
 if !put_float64(w,v.field_inner) { return false }
 if !put_float64(w,v.field_outer) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_gripper/GraspEpsilon.
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
// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_gripperGraspEpsilon :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_gripperGraspEpsilon,bool) {
 v:=init_Ros1Franka_gripperGraspEpsilon()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_inner=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_outer=f64(b)
 }
 return v,true
}
// @brief Encode one complete franka_gripper/GraspEpsilon value.
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
// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_gripperGraspEpsilon :: proc(v: ^Ros1Franka_gripperGraspEpsilon, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros1Franka_gripperGraspEpsilon(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros1Franka_gripperGraspEpsilon(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_gripper/GraspEpsilon value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_gripperGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_gripperGraspEpsilon :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_gripperGraspEpsilon,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros1Franka_gripperGraspEpsilon{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_gripperGraspEpsilon(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_gripperGraspEpsilon{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_gripper/GraspGoal value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 40..40 bytes and
// is identified by UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspGoal :: struct {
 // @brief franka_gripper/GraspGoal.width: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperGraspGoal; share/platform/ros/odin/API-CONTRACT.md
 field_width: f64,
 // @brief franka_gripper/GraspGoal.epsilon: franka_gripper/GraspEpsilon.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperGraspGoal; share/platform/ros/odin/API-CONTRACT.md
 field_epsilon: Ros1Franka_gripperGraspEpsilon,
 // @brief franka_gripper/GraspGoal.speed: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperGraspGoal; share/platform/ros/odin/API-CONTRACT.md
 field_speed: f64,
 // @brief franka_gripper/GraspGoal.force: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperGraspGoal; share/platform/ros/odin/API-CONTRACT.md
 field_force: f64,
}
// @brief Maximum canonical extent of franka_gripper/GraspGoal in bytes.
// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_gripperGraspGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspGoal_Maximum_Wire_Bytes :: 40
// @brief Canonical codec identity of franka_gripper/GraspGoal.
// @details Exact identity UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_gripperGraspGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspGoal_Codec_Identity :: "UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf"
// @brief Original ROS type name for franka_gripper/GraspGoal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_gripperGraspGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspGoal_Native_Type :: "franka_gripper/GraspGoal"
// @brief Selected original native identity for franka_gripper/GraspGoal.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_gripperGraspGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspGoal_Native_Identity :: ""
// @brief Construct the declared defaults of franka_gripper/GraspGoal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_gripperGraspGoal; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_gripperGraspGoal :: proc() -> Ros1Franka_gripperGraspGoal {
 v: Ros1Franka_gripperGraspGoal
 v.field_width = 0
 v.field_epsilon = Ros1Franka_gripperGraspEpsilon{}
 v.field_speed = 0
 v.field_force = 0
 return v
}
// @brief Append every canonical field of franka_gripper/GraspGoal.
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
// @see Ros1Franka_gripperGraspGoal; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_gripperGraspGoal :: proc(v: ^Ros1Franka_gripperGraspGoal, w: ^Writer) -> bool {
 if !put_float64(w,v.field_width) { return false }
 if !write_Ros1Franka_gripperGraspEpsilon(&v.field_epsilon,w) { return false }
 if !put_float64(w,v.field_speed) { return false }
 if !put_float64(w,v.field_force) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_gripper/GraspGoal.
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
// @see Ros1Franka_gripperGraspGoal; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_gripperGraspGoal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_gripperGraspGoal,bool) {
 v:=init_Ros1Franka_gripperGraspGoal()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_width=f64(b)
 }
 {
 b,ok:=read_Ros1Franka_gripperGraspEpsilon(r,allocator); if !ok { return v,false }
 v.field_epsilon=b
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_speed=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_force=f64(b)
 }
 return v,true
}
// @brief Encode one complete franka_gripper/GraspGoal value.
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
// @see Ros1Franka_gripperGraspGoal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_gripperGraspGoal :: proc(v: ^Ros1Franka_gripperGraspGoal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=40}
 if !write_Ros1Franka_gripperGraspGoal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=40}
 if !write_Ros1Franka_gripperGraspGoal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_gripper/GraspGoal value.
// @details Require the complete 40..40-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_gripperGraspGoal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_gripperGraspGoal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_gripperGraspGoal,u32) {
 if len(bytes)<40 || len(bytes)>40 { return Ros1Franka_gripperGraspGoal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_gripperGraspGoal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_gripperGraspGoal{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_gripper/GraspResult value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspResult :: struct {
 // @brief franka_gripper/GraspResult.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperGraspResult; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_gripper/GraspResult.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperGraspResult; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_gripper/GraspResult in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_gripperGraspResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspResult_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_gripper/GraspResult.
// @details Exact identity UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_gripperGraspResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspResult_Codec_Identity :: "UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e"
// @brief Original ROS type name for franka_gripper/GraspResult.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_gripperGraspResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspResult_Native_Type :: "franka_gripper/GraspResult"
// @brief Selected original native identity for franka_gripper/GraspResult.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_gripperGraspResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspResult_Native_Identity :: ""
// @brief Construct the declared defaults of franka_gripper/GraspResult.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_gripperGraspResult; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_gripperGraspResult :: proc() -> Ros1Franka_gripperGraspResult {
 v: Ros1Franka_gripperGraspResult
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_gripper/GraspResult.
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
// @see Ros1Franka_gripperGraspResult; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_gripperGraspResult :: proc(v: ^Ros1Franka_gripperGraspResult, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_gripper/GraspResult.
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
// @see Ros1Franka_gripperGraspResult; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_gripperGraspResult :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_gripperGraspResult,bool) {
 v:=init_Ros1Franka_gripperGraspResult()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete franka_gripper/GraspResult value.
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
// @see Ros1Franka_gripperGraspResult; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_gripperGraspResult :: proc(v: ^Ros1Franka_gripperGraspResult, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Franka_gripperGraspResult(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Franka_gripperGraspResult(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_gripper/GraspResult value.
// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_gripperGraspResult; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_gripperGraspResult :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_gripperGraspResult,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Franka_gripperGraspResult{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_gripperGraspResult(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_gripperGraspResult{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_gripper/GraspFeedback value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspFeedback :: struct {
}
// @brief Maximum canonical extent of franka_gripper/GraspFeedback in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspFeedback_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_gripper/GraspFeedback.
// @details Exact identity UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspFeedback_Codec_Identity :: "UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d"
// @brief Original ROS type name for franka_gripper/GraspFeedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspFeedback_Native_Type :: "franka_gripper/GraspFeedback"
// @brief Selected original native identity for franka_gripper/GraspFeedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperGraspFeedback_Native_Identity :: ""
// @brief Construct the declared defaults of franka_gripper/GraspFeedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_gripperGraspFeedback :: proc() -> Ros1Franka_gripperGraspFeedback {
 v: Ros1Franka_gripperGraspFeedback
 return v
}
// @brief Append every canonical field of franka_gripper/GraspFeedback.
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
// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_gripperGraspFeedback :: proc(v: ^Ros1Franka_gripperGraspFeedback, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_gripper/GraspFeedback.
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
// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_gripperGraspFeedback :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_gripperGraspFeedback,bool) {
 v:=init_Ros1Franka_gripperGraspFeedback()
 return v,true
}
// @brief Encode one complete franka_gripper/GraspFeedback value.
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
// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_gripperGraspFeedback :: proc(v: ^Ros1Franka_gripperGraspFeedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Franka_gripperGraspFeedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Franka_gripperGraspFeedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_gripper/GraspFeedback value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_gripperGraspFeedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_gripperGraspFeedback :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_gripperGraspFeedback,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Franka_gripperGraspFeedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_gripperGraspFeedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_gripperGraspFeedback{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_gripper/HomingGoal value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingGoal :: struct {
}
// @brief Maximum canonical extent of franka_gripper/HomingGoal in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_gripperHomingGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingGoal_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_gripper/HomingGoal.
// @details Exact identity UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_gripperHomingGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingGoal_Codec_Identity :: "UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f"
// @brief Original ROS type name for franka_gripper/HomingGoal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_gripperHomingGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingGoal_Native_Type :: "franka_gripper/HomingGoal"
// @brief Selected original native identity for franka_gripper/HomingGoal.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_gripperHomingGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingGoal_Native_Identity :: ""
// @brief Construct the declared defaults of franka_gripper/HomingGoal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_gripperHomingGoal; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_gripperHomingGoal :: proc() -> Ros1Franka_gripperHomingGoal {
 v: Ros1Franka_gripperHomingGoal
 return v
}
// @brief Append every canonical field of franka_gripper/HomingGoal.
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
// @see Ros1Franka_gripperHomingGoal; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_gripperHomingGoal :: proc(v: ^Ros1Franka_gripperHomingGoal, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_gripper/HomingGoal.
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
// @see Ros1Franka_gripperHomingGoal; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_gripperHomingGoal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_gripperHomingGoal,bool) {
 v:=init_Ros1Franka_gripperHomingGoal()
 return v,true
}
// @brief Encode one complete franka_gripper/HomingGoal value.
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
// @see Ros1Franka_gripperHomingGoal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_gripperHomingGoal :: proc(v: ^Ros1Franka_gripperHomingGoal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Franka_gripperHomingGoal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Franka_gripperHomingGoal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_gripper/HomingGoal value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_gripperHomingGoal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_gripperHomingGoal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_gripperHomingGoal,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Franka_gripperHomingGoal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_gripperHomingGoal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_gripperHomingGoal{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_gripper/HomingResult value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingResult :: struct {
 // @brief franka_gripper/HomingResult.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperHomingResult; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_gripper/HomingResult.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperHomingResult; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_gripper/HomingResult in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_gripperHomingResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingResult_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_gripper/HomingResult.
// @details Exact identity UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_gripperHomingResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingResult_Codec_Identity :: "UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477"
// @brief Original ROS type name for franka_gripper/HomingResult.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_gripperHomingResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingResult_Native_Type :: "franka_gripper/HomingResult"
// @brief Selected original native identity for franka_gripper/HomingResult.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_gripperHomingResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingResult_Native_Identity :: ""
// @brief Construct the declared defaults of franka_gripper/HomingResult.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_gripperHomingResult; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_gripperHomingResult :: proc() -> Ros1Franka_gripperHomingResult {
 v: Ros1Franka_gripperHomingResult
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_gripper/HomingResult.
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
// @see Ros1Franka_gripperHomingResult; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_gripperHomingResult :: proc(v: ^Ros1Franka_gripperHomingResult, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_gripper/HomingResult.
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
// @see Ros1Franka_gripperHomingResult; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_gripperHomingResult :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_gripperHomingResult,bool) {
 v:=init_Ros1Franka_gripperHomingResult()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete franka_gripper/HomingResult value.
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
// @see Ros1Franka_gripperHomingResult; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_gripperHomingResult :: proc(v: ^Ros1Franka_gripperHomingResult, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Franka_gripperHomingResult(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Franka_gripperHomingResult(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_gripper/HomingResult value.
// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_gripperHomingResult; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_gripperHomingResult :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_gripperHomingResult,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Franka_gripperHomingResult{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_gripperHomingResult(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_gripperHomingResult{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_gripper/HomingFeedback value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingFeedback :: struct {
}
// @brief Maximum canonical extent of franka_gripper/HomingFeedback in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingFeedback_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_gripper/HomingFeedback.
// @details Exact identity UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingFeedback_Codec_Identity :: "UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e"
// @brief Original ROS type name for franka_gripper/HomingFeedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingFeedback_Native_Type :: "franka_gripper/HomingFeedback"
// @brief Selected original native identity for franka_gripper/HomingFeedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperHomingFeedback_Native_Identity :: ""
// @brief Construct the declared defaults of franka_gripper/HomingFeedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_gripperHomingFeedback :: proc() -> Ros1Franka_gripperHomingFeedback {
 v: Ros1Franka_gripperHomingFeedback
 return v
}
// @brief Append every canonical field of franka_gripper/HomingFeedback.
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
// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_gripperHomingFeedback :: proc(v: ^Ros1Franka_gripperHomingFeedback, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_gripper/HomingFeedback.
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
// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_gripperHomingFeedback :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_gripperHomingFeedback,bool) {
 v:=init_Ros1Franka_gripperHomingFeedback()
 return v,true
}
// @brief Encode one complete franka_gripper/HomingFeedback value.
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
// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_gripperHomingFeedback :: proc(v: ^Ros1Franka_gripperHomingFeedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Franka_gripperHomingFeedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Franka_gripperHomingFeedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_gripper/HomingFeedback value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_gripperHomingFeedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_gripperHomingFeedback :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_gripperHomingFeedback,u32)
        {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Franka_gripperHomingFeedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_gripperHomingFeedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_gripperHomingFeedback{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_gripper/MoveGoal value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
// is identified by UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveGoal :: struct {
 // @brief franka_gripper/MoveGoal.width: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
 field_width: f64,
 // @brief franka_gripper/MoveGoal.speed: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
 field_speed: f64,
}
// @brief Maximum canonical extent of franka_gripper/MoveGoal in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveGoal_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of franka_gripper/MoveGoal.
// @details Exact identity UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveGoal_Codec_Identity :: "UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a"
// @brief Original ROS type name for franka_gripper/MoveGoal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveGoal_Native_Type :: "franka_gripper/MoveGoal"
// @brief Selected original native identity for franka_gripper/MoveGoal.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveGoal_Native_Identity :: ""
// @brief Construct the declared defaults of franka_gripper/MoveGoal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_gripperMoveGoal :: proc() -> Ros1Franka_gripperMoveGoal {
 v: Ros1Franka_gripperMoveGoal
 v.field_width = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of franka_gripper/MoveGoal.
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
// @see Ros1Franka_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_gripperMoveGoal :: proc(v: ^Ros1Franka_gripperMoveGoal, w: ^Writer) -> bool {
 if !put_float64(w,v.field_width) { return false }
 if !put_float64(w,v.field_speed) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_gripper/MoveGoal.
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
// @see Ros1Franka_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_gripperMoveGoal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_gripperMoveGoal,bool) {
 v:=init_Ros1Franka_gripperMoveGoal()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_width=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_speed=f64(b)
 }
 return v,true
}
// @brief Encode one complete franka_gripper/MoveGoal value.
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
// @see Ros1Franka_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_gripperMoveGoal :: proc(v: ^Ros1Franka_gripperMoveGoal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros1Franka_gripperMoveGoal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros1Franka_gripperMoveGoal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_gripper/MoveGoal value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_gripperMoveGoal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_gripperMoveGoal,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros1Franka_gripperMoveGoal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_gripperMoveGoal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_gripperMoveGoal{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_gripper/MoveResult value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveResult :: struct {
 // @brief franka_gripper/MoveResult.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_gripper/MoveResult.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_gripper/MoveResult in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveResult_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_gripper/MoveResult.
// @details Exact identity UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveResult_Codec_Identity :: "UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3"
// @brief Original ROS type name for franka_gripper/MoveResult.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveResult_Native_Type :: "franka_gripper/MoveResult"
// @brief Selected original native identity for franka_gripper/MoveResult.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveResult_Native_Identity :: ""
// @brief Construct the declared defaults of franka_gripper/MoveResult.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_gripperMoveResult :: proc() -> Ros1Franka_gripperMoveResult {
 v: Ros1Franka_gripperMoveResult
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_gripper/MoveResult.
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
// @see Ros1Franka_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_gripperMoveResult :: proc(v: ^Ros1Franka_gripperMoveResult, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_gripper/MoveResult.
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
// @see Ros1Franka_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_gripperMoveResult :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_gripperMoveResult,bool) {
 v:=init_Ros1Franka_gripperMoveResult()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete franka_gripper/MoveResult value.
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
// @see Ros1Franka_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_gripperMoveResult :: proc(v: ^Ros1Franka_gripperMoveResult, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Franka_gripperMoveResult(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Franka_gripperMoveResult(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_gripper/MoveResult value.
// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_gripperMoveResult :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_gripperMoveResult,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Franka_gripperMoveResult{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_gripperMoveResult(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_gripperMoveResult{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_gripper/MoveFeedback value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveFeedback :: struct {
}
// @brief Maximum canonical extent of franka_gripper/MoveFeedback in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveFeedback_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_gripper/MoveFeedback.
// @details Exact identity UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveFeedback_Codec_Identity :: "UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80"
// @brief Original ROS type name for franka_gripper/MoveFeedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveFeedback_Native_Type :: "franka_gripper/MoveFeedback"
// @brief Selected original native identity for franka_gripper/MoveFeedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperMoveFeedback_Native_Identity :: ""
// @brief Construct the declared defaults of franka_gripper/MoveFeedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_gripperMoveFeedback :: proc() -> Ros1Franka_gripperMoveFeedback {
 v: Ros1Franka_gripperMoveFeedback
 return v
}
// @brief Append every canonical field of franka_gripper/MoveFeedback.
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
// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_gripperMoveFeedback :: proc(v: ^Ros1Franka_gripperMoveFeedback, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_gripper/MoveFeedback.
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
// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_gripperMoveFeedback :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_gripperMoveFeedback,bool) {
 v:=init_Ros1Franka_gripperMoveFeedback()
 return v,true
}
// @brief Encode one complete franka_gripper/MoveFeedback value.
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
// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_gripperMoveFeedback :: proc(v: ^Ros1Franka_gripperMoveFeedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Franka_gripperMoveFeedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Franka_gripperMoveFeedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_gripper/MoveFeedback value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_gripperMoveFeedback :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_gripperMoveFeedback,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Franka_gripperMoveFeedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_gripperMoveFeedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_gripperMoveFeedback{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_gripper/StopGoal value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopGoal :: struct {
}
// @brief Maximum canonical extent of franka_gripper/StopGoal in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_gripperStopGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopGoal_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_gripper/StopGoal.
// @details Exact identity UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_gripperStopGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopGoal_Codec_Identity :: "UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245"
// @brief Original ROS type name for franka_gripper/StopGoal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_gripperStopGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopGoal_Native_Type :: "franka_gripper/StopGoal"
// @brief Selected original native identity for franka_gripper/StopGoal.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_gripperStopGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopGoal_Native_Identity :: ""
// @brief Construct the declared defaults of franka_gripper/StopGoal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_gripperStopGoal; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_gripperStopGoal :: proc() -> Ros1Franka_gripperStopGoal {
 v: Ros1Franka_gripperStopGoal
 return v
}
// @brief Append every canonical field of franka_gripper/StopGoal.
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
// @see Ros1Franka_gripperStopGoal; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_gripperStopGoal :: proc(v: ^Ros1Franka_gripperStopGoal, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_gripper/StopGoal.
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
// @see Ros1Franka_gripperStopGoal; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_gripperStopGoal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_gripperStopGoal,bool) {
 v:=init_Ros1Franka_gripperStopGoal()
 return v,true
}
// @brief Encode one complete franka_gripper/StopGoal value.
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
// @see Ros1Franka_gripperStopGoal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_gripperStopGoal :: proc(v: ^Ros1Franka_gripperStopGoal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Franka_gripperStopGoal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Franka_gripperStopGoal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_gripper/StopGoal value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_gripperStopGoal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_gripperStopGoal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_gripperStopGoal,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Franka_gripperStopGoal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_gripperStopGoal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_gripperStopGoal{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_gripper/StopResult value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopResult :: struct {
 // @brief franka_gripper/StopResult.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperStopResult; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_gripper/StopResult.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_gripperStopResult; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_gripper/StopResult in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_gripperStopResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopResult_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_gripper/StopResult.
// @details Exact identity UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_gripperStopResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopResult_Codec_Identity :: "UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61"
// @brief Original ROS type name for franka_gripper/StopResult.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_gripperStopResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopResult_Native_Type :: "franka_gripper/StopResult"
// @brief Selected original native identity for franka_gripper/StopResult.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_gripperStopResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopResult_Native_Identity :: ""
// @brief Construct the declared defaults of franka_gripper/StopResult.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_gripperStopResult; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_gripperStopResult :: proc() -> Ros1Franka_gripperStopResult {
 v: Ros1Franka_gripperStopResult
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_gripper/StopResult.
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
// @see Ros1Franka_gripperStopResult; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_gripperStopResult :: proc(v: ^Ros1Franka_gripperStopResult, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_gripper/StopResult.
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
// @see Ros1Franka_gripperStopResult; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_gripperStopResult :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_gripperStopResult,bool) {
 v:=init_Ros1Franka_gripperStopResult()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete franka_gripper/StopResult value.
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
// @see Ros1Franka_gripperStopResult; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_gripperStopResult :: proc(v: ^Ros1Franka_gripperStopResult, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Franka_gripperStopResult(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Franka_gripperStopResult(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_gripper/StopResult value.
// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_gripperStopResult; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_gripperStopResult :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_gripperStopResult,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Franka_gripperStopResult{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_gripperStopResult(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_gripperStopResult{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_gripper/StopFeedback value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopFeedback :: struct {
}
// @brief Maximum canonical extent of franka_gripper/StopFeedback in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_gripperStopFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopFeedback_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_gripper/StopFeedback.
// @details Exact identity UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_gripperStopFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopFeedback_Codec_Identity :: "UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d"
// @brief Original ROS type name for franka_gripper/StopFeedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_gripperStopFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopFeedback_Native_Type :: "franka_gripper/StopFeedback"
// @brief Selected original native identity for franka_gripper/StopFeedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_gripperStopFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_gripperStopFeedback_Native_Identity :: ""
// @brief Construct the declared defaults of franka_gripper/StopFeedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_gripperStopFeedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_gripperStopFeedback :: proc() -> Ros1Franka_gripperStopFeedback {
 v: Ros1Franka_gripperStopFeedback
 return v
}
// @brief Append every canonical field of franka_gripper/StopFeedback.
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
// @see Ros1Franka_gripperStopFeedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_gripperStopFeedback :: proc(v: ^Ros1Franka_gripperStopFeedback, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_gripper/StopFeedback.
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
// @see Ros1Franka_gripperStopFeedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_gripperStopFeedback :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_gripperStopFeedback,bool) {
 v:=init_Ros1Franka_gripperStopFeedback()
 return v,true
}
// @brief Encode one complete franka_gripper/StopFeedback value.
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
// @see Ros1Franka_gripperStopFeedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_gripperStopFeedback :: proc(v: ^Ros1Franka_gripperStopFeedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Franka_gripperStopFeedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Franka_gripperStopFeedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_gripper/StopFeedback value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_gripperStopFeedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_gripperStopFeedback :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_gripperStopFeedback,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Franka_gripperStopFeedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_gripperStopFeedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_gripperStopFeedback{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/ErrorRecoveryGoal value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryGoal :: struct {
}
// @brief Maximum canonical extent of franka_msgs/ErrorRecoveryGoal in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryGoal_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_msgs/ErrorRecoveryGoal.
// @details Exact identity UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryGoal_Codec_Identity :: "UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64"
// @brief Original ROS type name for franka_msgs/ErrorRecoveryGoal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryGoal_Native_Type :: "franka_msgs/ErrorRecoveryGoal"
// @brief Selected original native identity for franka_msgs/ErrorRecoveryGoal.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryGoal_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/ErrorRecoveryGoal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsErrorRecoveryGoal :: proc() -> Ros1Franka_msgsErrorRecoveryGoal {
 v: Ros1Franka_msgsErrorRecoveryGoal
 return v
}
// @brief Append every canonical field of franka_msgs/ErrorRecoveryGoal.
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
// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsErrorRecoveryGoal :: proc(v: ^Ros1Franka_msgsErrorRecoveryGoal, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/ErrorRecoveryGoal.
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
// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsErrorRecoveryGoal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_msgsErrorRecoveryGoal,bool) {
 v:=init_Ros1Franka_msgsErrorRecoveryGoal()
 return v,true
}
// @brief Encode one complete franka_msgs/ErrorRecoveryGoal value.
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
// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsErrorRecoveryGoal :: proc(v: ^Ros1Franka_msgsErrorRecoveryGoal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Franka_msgsErrorRecoveryGoal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Franka_msgsErrorRecoveryGoal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/ErrorRecoveryGoal value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsErrorRecoveryGoal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsErrorRecoveryGoal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_msgsErrorRecoveryGoal,u32)
        {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Franka_msgsErrorRecoveryGoal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsErrorRecoveryGoal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsErrorRecoveryGoal{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/ErrorRecoveryResult value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryResult :: struct {
}
// @brief Maximum canonical extent of franka_msgs/ErrorRecoveryResult in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryResult_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_msgs/ErrorRecoveryResult.
// @details Exact identity UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryResult_Codec_Identity :: "UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794"
// @brief Original ROS type name for franka_msgs/ErrorRecoveryResult.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryResult_Native_Type :: "franka_msgs/ErrorRecoveryResult"
// @brief Selected original native identity for franka_msgs/ErrorRecoveryResult.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryResult_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/ErrorRecoveryResult.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsErrorRecoveryResult :: proc() -> Ros1Franka_msgsErrorRecoveryResult {
 v: Ros1Franka_msgsErrorRecoveryResult
 return v
}
// @brief Append every canonical field of franka_msgs/ErrorRecoveryResult.
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
// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsErrorRecoveryResult :: proc(v: ^Ros1Franka_msgsErrorRecoveryResult, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/ErrorRecoveryResult.
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
// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsErrorRecoveryResult :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsErrorRecoveryResult,bool) {
 v:=init_Ros1Franka_msgsErrorRecoveryResult()
 return v,true
}
// @brief Encode one complete franka_msgs/ErrorRecoveryResult value.
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
// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsErrorRecoveryResult :: proc(v: ^Ros1Franka_msgsErrorRecoveryResult, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Franka_msgsErrorRecoveryResult(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Franka_msgsErrorRecoveryResult(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/ErrorRecoveryResult value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsErrorRecoveryResult; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsErrorRecoveryResult :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsErrorRecoveryResult,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Franka_msgsErrorRecoveryResult{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsErrorRecoveryResult(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsErrorRecoveryResult{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/ErrorRecoveryFeedback value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryFeedback :: struct {
}
// @brief Maximum canonical extent of franka_msgs/ErrorRecoveryFeedback in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryFeedback_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_msgs/ErrorRecoveryFeedback.
// @details Exact identity UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryFeedback_Codec_Identity :: "UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21"
// @brief Original ROS type name for franka_msgs/ErrorRecoveryFeedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryFeedback_Native_Type :: "franka_msgs/ErrorRecoveryFeedback"
// @brief Selected original native identity for franka_msgs/ErrorRecoveryFeedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrorRecoveryFeedback_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/ErrorRecoveryFeedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsErrorRecoveryFeedback :: proc() -> Ros1Franka_msgsErrorRecoveryFeedback {
 v: Ros1Franka_msgsErrorRecoveryFeedback
 return v
}
// @brief Append every canonical field of franka_msgs/ErrorRecoveryFeedback.
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
// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsErrorRecoveryFeedback :: proc(v: ^Ros1Franka_msgsErrorRecoveryFeedback, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/ErrorRecoveryFeedback.
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
// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsErrorRecoveryFeedback :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsErrorRecoveryFeedback,bool) {
 v:=init_Ros1Franka_msgsErrorRecoveryFeedback()
 return v,true
}
// @brief Encode one complete franka_msgs/ErrorRecoveryFeedback value.
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
// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsErrorRecoveryFeedback :: proc(v: ^Ros1Franka_msgsErrorRecoveryFeedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Franka_msgsErrorRecoveryFeedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Franka_msgsErrorRecoveryFeedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/ErrorRecoveryFeedback value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsErrorRecoveryFeedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsErrorRecoveryFeedback :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsErrorRecoveryFeedback,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Franka_msgsErrorRecoveryFeedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsErrorRecoveryFeedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsErrorRecoveryFeedback{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/Errors value.
// @details All 41 declared fields are retained in source order. The canonical representation occupies 41..41 bytes and
// is identified by UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrors :: struct {
 // @brief franka_msgs/Errors.joint_position_limits_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_position_limits_violation: bool,
 // @brief franka_msgs/Errors.cartesian_position_limits_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_position_limits_violation: bool,
 // @brief franka_msgs/Errors.self_collision_avoidance_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_self_collision_avoidance_violation: bool,
 // @brief franka_msgs/Errors.joint_velocity_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_velocity_violation: bool,
 // @brief franka_msgs/Errors.cartesian_velocity_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_velocity_violation: bool,
 // @brief franka_msgs/Errors.force_control_safety_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_force_control_safety_violation: bool,
 // @brief franka_msgs/Errors.joint_reflex: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_reflex: bool,
 // @brief franka_msgs/Errors.cartesian_reflex: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_reflex: bool,
 // @brief franka_msgs/Errors.max_goal_pose_deviation_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_max_goal_pose_deviation_violation: bool,
 // @brief franka_msgs/Errors.max_path_pose_deviation_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_max_path_pose_deviation_violation: bool,
 // @brief franka_msgs/Errors.cartesian_velocity_profile_safety_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_velocity_profile_safety_violation: bool,
 // @brief franka_msgs/Errors.joint_position_motion_generator_start_pose_invalid: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_position_motion_generator_start_pose_invalid: bool,
 // @brief franka_msgs/Errors.joint_motion_generator_position_limits_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_motion_generator_position_limits_violation: bool,
 // @brief franka_msgs/Errors.joint_motion_generator_velocity_limits_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_motion_generator_velocity_limits_violation: bool,
 // @brief franka_msgs/Errors.joint_motion_generator_velocity_discontinuity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_motion_generator_velocity_discontinuity: bool,
 // @brief franka_msgs/Errors.joint_motion_generator_acceleration_discontinuity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_motion_generator_acceleration_discontinuity: bool,
 // @brief franka_msgs/Errors.cartesian_position_motion_generator_start_pose_invalid: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_position_motion_generator_start_pose_invalid: bool,
 // @brief franka_msgs/Errors.cartesian_motion_generator_elbow_limit_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_elbow_limit_violation: bool,
 // @brief franka_msgs/Errors.cartesian_motion_generator_velocity_limits_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_velocity_limits_violation: bool,
 // @brief franka_msgs/Errors.cartesian_motion_generator_velocity_discontinuity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_velocity_discontinuity: bool,
 // @brief franka_msgs/Errors.cartesian_motion_generator_acceleration_discontinuity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_acceleration_discontinuity: bool,
 // @brief franka_msgs/Errors.cartesian_motion_generator_elbow_sign_inconsistent: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_elbow_sign_inconsistent: bool,
 // @brief franka_msgs/Errors.cartesian_motion_generator_start_elbow_invalid: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_start_elbow_invalid: bool,
 // @brief franka_msgs/Errors.cartesian_motion_generator_joint_position_limits_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_joint_position_limits_violation: bool,
 // @brief franka_msgs/Errors.cartesian_motion_generator_joint_velocity_limits_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_joint_velocity_limits_violation: bool,
 // @brief franka_msgs/Errors.cartesian_motion_generator_joint_velocity_discontinuity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_joint_velocity_discontinuity: bool,
 // @brief franka_msgs/Errors.cartesian_motion_generator_joint_acceleration_discontinuity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_joint_acceleration_discontinuity: bool,
 // @brief franka_msgs/Errors.cartesian_position_motion_generator_invalid_frame: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_position_motion_generator_invalid_frame: bool,
 // @brief franka_msgs/Errors.force_controller_desired_force_tolerance_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_force_controller_desired_force_tolerance_violation: bool,
 // @brief franka_msgs/Errors.controller_torque_discontinuity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_controller_torque_discontinuity: bool,
 // @brief franka_msgs/Errors.start_elbow_sign_inconsistent: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_start_elbow_sign_inconsistent: bool,
 // @brief franka_msgs/Errors.communication_constraints_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_communication_constraints_violation: bool,
 // @brief franka_msgs/Errors.power_limit_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_power_limit_violation: bool,
 // @brief franka_msgs/Errors.joint_p2p_insufficient_torque_for_planning: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_p2p_insufficient_torque_for_planning: bool,
 // @brief franka_msgs/Errors.tau_j_range_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_tau_j_range_violation: bool,
 // @brief franka_msgs/Errors.instability_detected: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_instability_detected: bool,
 // @brief franka_msgs/Errors.joint_move_in_wrong_direction: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_move_in_wrong_direction: bool,
 // @brief franka_msgs/Errors.cartesian_spline_motion_generator_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_spline_motion_generator_violation: bool,
 // @brief franka_msgs/Errors.joint_via_motion_generator_planning_joint_limit_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_via_motion_generator_planning_joint_limit_violation: bool,
 // @brief franka_msgs/Errors.base_acceleration_initialization_timeout: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_base_acceleration_initialization_timeout: bool,
 // @brief franka_msgs/Errors.base_acceleration_invalid_reading: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
 field_base_acceleration_invalid_reading: bool,
}
// @brief Maximum canonical extent of franka_msgs/Errors in bytes.
// @details The inclusive bound is 41 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrors_Maximum_Wire_Bytes :: 41
// @brief Canonical codec identity of franka_msgs/Errors.
// @details Exact identity UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrors_Codec_Identity :: "UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca"
// @brief Original ROS type name for franka_msgs/Errors.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrors_Native_Type :: "franka_msgs/Errors"
// @brief Selected original native identity for franka_msgs/Errors.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsErrors_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/Errors.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsErrors :: proc() -> Ros1Franka_msgsErrors {
 v: Ros1Franka_msgsErrors
 v.field_joint_position_limits_violation = false
 v.field_cartesian_position_limits_violation = false
 v.field_self_collision_avoidance_violation = false
 v.field_joint_velocity_violation = false
 v.field_cartesian_velocity_violation = false
 v.field_force_control_safety_violation = false
 v.field_joint_reflex = false
 v.field_cartesian_reflex = false
 v.field_max_goal_pose_deviation_violation = false
 v.field_max_path_pose_deviation_violation = false
 v.field_cartesian_velocity_profile_safety_violation = false
 v.field_joint_position_motion_generator_start_pose_invalid = false
 v.field_joint_motion_generator_position_limits_violation = false
 v.field_joint_motion_generator_velocity_limits_violation = false
 v.field_joint_motion_generator_velocity_discontinuity = false
 v.field_joint_motion_generator_acceleration_discontinuity = false
 v.field_cartesian_position_motion_generator_start_pose_invalid = false
 v.field_cartesian_motion_generator_elbow_limit_violation = false
 v.field_cartesian_motion_generator_velocity_limits_violation = false
 v.field_cartesian_motion_generator_velocity_discontinuity = false
 v.field_cartesian_motion_generator_acceleration_discontinuity = false
 v.field_cartesian_motion_generator_elbow_sign_inconsistent = false
 v.field_cartesian_motion_generator_start_elbow_invalid = false
 v.field_cartesian_motion_generator_joint_position_limits_violation = false
 v.field_cartesian_motion_generator_joint_velocity_limits_violation = false
 v.field_cartesian_motion_generator_joint_velocity_discontinuity = false
 v.field_cartesian_motion_generator_joint_acceleration_discontinuity = false
 v.field_cartesian_position_motion_generator_invalid_frame = false
 v.field_force_controller_desired_force_tolerance_violation = false
 v.field_controller_torque_discontinuity = false
 v.field_start_elbow_sign_inconsistent = false
 v.field_communication_constraints_violation = false
 v.field_power_limit_violation = false
 v.field_joint_p2p_insufficient_torque_for_planning = false
 v.field_tau_j_range_violation = false
 v.field_instability_detected = false
 v.field_joint_move_in_wrong_direction = false
 v.field_cartesian_spline_motion_generator_violation = false
 v.field_joint_via_motion_generator_planning_joint_limit_violation = false
 v.field_base_acceleration_initialization_timeout = false
 v.field_base_acceleration_invalid_reading = false
 return v
}
// @brief Append every canonical field of franka_msgs/Errors.
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
// @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsErrors :: proc(v: ^Ros1Franka_msgsErrors, w: ^Writer) -> bool {
 if !put_bool(w,v.field_joint_position_limits_violation) { return false }
 if !put_bool(w,v.field_cartesian_position_limits_violation) { return false }
 if !put_bool(w,v.field_self_collision_avoidance_violation) { return false }
 if !put_bool(w,v.field_joint_velocity_violation) { return false }
 if !put_bool(w,v.field_cartesian_velocity_violation) { return false }
 if !put_bool(w,v.field_force_control_safety_violation) { return false }
 if !put_bool(w,v.field_joint_reflex) { return false }
 if !put_bool(w,v.field_cartesian_reflex) { return false }
 if !put_bool(w,v.field_max_goal_pose_deviation_violation) { return false }
 if !put_bool(w,v.field_max_path_pose_deviation_violation) { return false }
 if !put_bool(w,v.field_cartesian_velocity_profile_safety_violation) { return false }
 if !put_bool(w,v.field_joint_position_motion_generator_start_pose_invalid) { return false }
 if !put_bool(w,v.field_joint_motion_generator_position_limits_violation) { return false }
 if !put_bool(w,v.field_joint_motion_generator_velocity_limits_violation) { return false }
 if !put_bool(w,v.field_joint_motion_generator_velocity_discontinuity) { return false }
 if !put_bool(w,v.field_joint_motion_generator_acceleration_discontinuity) { return false }
 if !put_bool(w,v.field_cartesian_position_motion_generator_start_pose_invalid) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_elbow_limit_violation) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_velocity_limits_violation) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_velocity_discontinuity) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_acceleration_discontinuity) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_elbow_sign_inconsistent) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_start_elbow_invalid) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_joint_position_limits_violation) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_joint_velocity_limits_violation) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_joint_velocity_discontinuity) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_joint_acceleration_discontinuity) { return false }
 if !put_bool(w,v.field_cartesian_position_motion_generator_invalid_frame) { return false }
 if !put_bool(w,v.field_force_controller_desired_force_tolerance_violation) { return false }
 if !put_bool(w,v.field_controller_torque_discontinuity) { return false }
 if !put_bool(w,v.field_start_elbow_sign_inconsistent) { return false }
 if !put_bool(w,v.field_communication_constraints_violation) { return false }
 if !put_bool(w,v.field_power_limit_violation) { return false }
 if !put_bool(w,v.field_joint_p2p_insufficient_torque_for_planning) { return false }
 if !put_bool(w,v.field_tau_j_range_violation) { return false }
 if !put_bool(w,v.field_instability_detected) { return false }
 if !put_bool(w,v.field_joint_move_in_wrong_direction) { return false }
 if !put_bool(w,v.field_cartesian_spline_motion_generator_violation) { return false }
 if !put_bool(w,v.field_joint_via_motion_generator_planning_joint_limit_violation) { return false }
 if !put_bool(w,v.field_base_acceleration_initialization_timeout) { return false }
 if !put_bool(w,v.field_base_acceleration_invalid_reading) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/Errors.
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
// @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsErrors :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_msgsErrors,bool) {
 v:=init_Ros1Franka_msgsErrors()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_position_limits_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_position_limits_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_self_collision_avoidance_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_velocity_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_velocity_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_force_control_safety_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_reflex=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_reflex=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_max_goal_pose_deviation_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_max_path_pose_deviation_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_velocity_profile_safety_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_position_motion_generator_start_pose_invalid=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_motion_generator_position_limits_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_motion_generator_velocity_limits_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_motion_generator_velocity_discontinuity=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_motion_generator_acceleration_discontinuity=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_position_motion_generator_start_pose_invalid=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_elbow_limit_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_velocity_limits_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_velocity_discontinuity=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_acceleration_discontinuity=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_elbow_sign_inconsistent=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_start_elbow_invalid=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_joint_position_limits_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_joint_velocity_limits_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_joint_velocity_discontinuity=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_joint_acceleration_discontinuity=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_position_motion_generator_invalid_frame=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_force_controller_desired_force_tolerance_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_controller_torque_discontinuity=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_start_elbow_sign_inconsistent=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_communication_constraints_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_power_limit_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_p2p_insufficient_torque_for_planning=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_tau_j_range_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_instability_detected=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_move_in_wrong_direction=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_spline_motion_generator_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_via_motion_generator_planning_joint_limit_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_base_acceleration_initialization_timeout=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_base_acceleration_invalid_reading=bool(b)
 }
 return v,true
}
// @brief Encode one complete franka_msgs/Errors value.
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
// @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsErrors :: proc(v: ^Ros1Franka_msgsErrors, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=41}
 if !write_Ros1Franka_msgsErrors(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=41}
 if !write_Ros1Franka_msgsErrors(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/Errors value.
// @details Require the complete 41..41-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsErrors; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsErrors :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_msgsErrors,u32) {
 if len(bytes)<41 || len(bytes)>41 { return Ros1Franka_msgsErrors{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsErrors(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsErrors{},reader.code }
 return value,0
}
// @brief Complete ROS 1 time value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
// identified by UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Time :: struct {
 // @brief time.sec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
 field_sec: u32,
 // @brief time.nsec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
 field_nsec: u32,
}
// @brief Maximum canonical extent of time in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
Ros1Time_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of time.
// @details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
Ros1Time_Codec_Identity :: "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
// @brief Original ROS type name for time.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
Ros1Time_Native_Type :: "time"
// @brief Selected original native identity for time.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
Ros1Time_Native_Identity :: ""
// @brief Construct the declared defaults of time.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
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
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Time :: proc(v: ^Ros1Time, w: ^Writer) -> bool {
 if v.field_nsec >= 1000000000 { w.code=22; return false }
 if !put_integer(w,u64(v.field_sec),4) { return false }
 if !put_integer(w,u64(v.field_nsec),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of time.
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
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Time :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Time,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Time{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Time(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Time{},reader.code }
 return value,0
}
// @brief Complete ROS 1 std_msgs/Header value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..144 bytes and
// is identified by UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader :: struct {
 // @brief std_msgs/Header.seq: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
 field_seq: u32,
 // @brief std_msgs/Header.stamp: time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
 field_stamp: Ros1Time,
 // @brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
 field_frame_id: string,
}
// @brief Maximum canonical extent of std_msgs/Header in bytes.
// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader_Maximum_Wire_Bytes :: 144
// @brief Canonical codec identity of std_msgs/Header.
// @details Exact identity UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader_Codec_Identity :: "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
// @brief Original ROS type name for std_msgs/Header.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader_Native_Type :: "std_msgs/Header"
// @brief Selected original native identity for std_msgs/Header.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader_Native_Identity :: ""
// @brief Construct the declared defaults of std_msgs/Header.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
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
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Std_msgsHeader :: proc(v: ^Ros1Std_msgsHeader, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_seq),4) { return false }
 if !write_Ros1Time(&v.field_stamp,w) { return false }
 if !put_string(w,v.field_frame_id,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_msgs/Header.
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
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Std_msgsHeader :: proc(v: ^Ros1Std_msgsHeader, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=144}
 if !write_Ros1Std_msgsHeader(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=144}
 if !write_Ros1Std_msgsHeader(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_msgs/Header value.
// @details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Std_msgsHeader :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Std_msgsHeader,u32) {
 if len(bytes)<16 || len(bytes)>144 { return Ros1Std_msgsHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Std_msgsHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Std_msgsHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/FrankaState value.
// @details All 48 declared fields are retained in source order. The canonical representation occupies 2491..2619 bytes
// and is identified by UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsFrankaState :: struct {
 // @brief franka_msgs/FrankaState.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros1Std_msgsHeader,
 // @brief franka_msgs/FrankaState.cartesian_collision: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_collision: [6]f64,
 // @brief franka_msgs/FrankaState.cartesian_contact: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_contact: [6]f64,
 // @brief franka_msgs/FrankaState.q: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_q: [7]f64,
 // @brief franka_msgs/FrankaState.q_d: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_q_d: [7]f64,
 // @brief franka_msgs/FrankaState.dq: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_dq: [7]f64,
 // @brief franka_msgs/FrankaState.dq_d: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_dq_d: [7]f64,
 // @brief franka_msgs/FrankaState.ddq_d: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_ddq_d: [7]f64,
 // @brief franka_msgs/FrankaState.theta: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_theta: [7]f64,
 // @brief franka_msgs/FrankaState.dtheta: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_dtheta: [7]f64,
 // @brief franka_msgs/FrankaState.tau_J: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_tau_J: [7]f64,
 // @brief franka_msgs/FrankaState.dtau_J: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_dtau_J: [7]f64,
 // @brief franka_msgs/FrankaState.tau_J_d: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_tau_J_d: [7]f64,
 // @brief franka_msgs/FrankaState.K_F_ext_hat_K: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_K_F_ext_hat_K: [6]f64,
 // @brief franka_msgs/FrankaState.elbow: float64; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_elbow: [2]f64,
 // @brief franka_msgs/FrankaState.elbow_d: float64; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_elbow_d: [2]f64,
 // @brief franka_msgs/FrankaState.elbow_c: float64; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_elbow_c: [2]f64,
 // @brief franka_msgs/FrankaState.delbow_c: float64; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_delbow_c: [2]f64,
 // @brief franka_msgs/FrankaState.ddelbow_c: float64; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_ddelbow_c: [2]f64,
 // @brief franka_msgs/FrankaState.joint_collision: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_joint_collision: [7]f64,
 // @brief franka_msgs/FrankaState.joint_contact: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_joint_contact: [7]f64,
 // @brief franka_msgs/FrankaState.O_F_ext_hat_K: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_O_F_ext_hat_K: [6]f64,
 // @brief franka_msgs/FrankaState.O_dP_EE_d: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_O_dP_EE_d: [6]f64,
 // @brief franka_msgs/FrankaState.O_ddP_O: float64; exactly 3 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_O_ddP_O: [3]f64,
 // @brief franka_msgs/FrankaState.O_dP_EE_c: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_O_dP_EE_c: [6]f64,
 // @brief franka_msgs/FrankaState.O_ddP_EE_c: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_O_ddP_EE_c: [6]f64,
 // @brief franka_msgs/FrankaState.tau_ext_hat_filtered: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_tau_ext_hat_filtered: [7]f64,
 // @brief franka_msgs/FrankaState.m_ee: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_m_ee: f64,
 // @brief franka_msgs/FrankaState.F_x_Cee: float64; exactly 3 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_F_x_Cee: [3]f64,
 // @brief franka_msgs/FrankaState.I_ee: float64; exactly 9 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_I_ee: [9]f64,
 // @brief franka_msgs/FrankaState.m_load: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_m_load: f64,
 // @brief franka_msgs/FrankaState.F_x_Cload: float64; exactly 3 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_F_x_Cload: [3]f64,
 // @brief franka_msgs/FrankaState.I_load: float64; exactly 9 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_I_load: [9]f64,
 // @brief franka_msgs/FrankaState.m_total: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_m_total: f64,
 // @brief franka_msgs/FrankaState.F_x_Ctotal: float64; exactly 3 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_F_x_Ctotal: [3]f64,
 // @brief franka_msgs/FrankaState.I_total: float64; exactly 9 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_I_total: [9]f64,
 // @brief franka_msgs/FrankaState.O_T_EE: float64; exactly 16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_O_T_EE: [16]f64,
 // @brief franka_msgs/FrankaState.O_T_EE_d: float64; exactly 16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_O_T_EE_d: [16]f64,
 // @brief franka_msgs/FrankaState.O_T_EE_c: float64; exactly 16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_O_T_EE_c: [16]f64,
 // @brief franka_msgs/FrankaState.F_T_EE: float64; exactly 16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_F_T_EE: [16]f64,
 // @brief franka_msgs/FrankaState.F_T_NE: float64; exactly 16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_F_T_NE: [16]f64,
 // @brief franka_msgs/FrankaState.NE_T_EE: float64; exactly 16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_NE_T_EE: [16]f64,
 // @brief franka_msgs/FrankaState.EE_T_K: float64; exactly 16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_EE_T_K: [16]f64,
 // @brief franka_msgs/FrankaState.time: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_time: f64,
 // @brief franka_msgs/FrankaState.control_command_success_rate: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_control_command_success_rate: f64,
 // @brief franka_msgs/FrankaState.robot_mode: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_robot_mode: u8,
 // @brief franka_msgs/FrankaState.current_errors: franka_msgs/Errors.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_current_errors: Ros1Franka_msgsErrors,
 // @brief franka_msgs/FrankaState.last_motion_errors: franka_msgs/Errors.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
 field_last_motion_errors: Ros1Franka_msgsErrors,
}
// @brief Maximum canonical extent of franka_msgs/FrankaState in bytes.
// @details The inclusive bound is 2619 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsFrankaState_Maximum_Wire_Bytes :: 2619
// @brief Canonical codec identity of franka_msgs/FrankaState.
// @details Exact identity UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsFrankaState_Codec_Identity :: "UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71"
// @brief Original ROS type name for franka_msgs/FrankaState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsFrankaState_Native_Type :: "franka_msgs/FrankaState"
// @brief Selected original native identity for franka_msgs/FrankaState.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsFrankaState_Native_Identity :: ""
// @brief franka_msgs/FrankaState.ROBOT_MODE_OTHER: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsFrankaState_ROBOT_MODE_OTHER :: u8(0)
// @brief franka_msgs/FrankaState.ROBOT_MODE_IDLE: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsFrankaState_ROBOT_MODE_IDLE :: u8(1)
// @brief franka_msgs/FrankaState.ROBOT_MODE_MOVE: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsFrankaState_ROBOT_MODE_MOVE :: u8(2)
// @brief franka_msgs/FrankaState.ROBOT_MODE_GUIDING: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsFrankaState_ROBOT_MODE_GUIDING :: u8(3)
// @brief franka_msgs/FrankaState.ROBOT_MODE_REFLEX: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsFrankaState_ROBOT_MODE_REFLEX :: u8(4)
// @brief franka_msgs/FrankaState.ROBOT_MODE_USER_STOPPED: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsFrankaState_ROBOT_MODE_USER_STOPPED :: u8(5)
// @brief franka_msgs/FrankaState.ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY: original uint8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsFrankaState_ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY :: u8(6)
// @brief Construct the declared defaults of franka_msgs/FrankaState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsFrankaState :: proc() -> Ros1Franka_msgsFrankaState {
 v: Ros1Franka_msgsFrankaState
 v.field_header = Ros1Std_msgsHeader{}
 v.field_cartesian_collision = [6]f64{0,0,0,0,0,0}
 v.field_cartesian_contact = [6]f64{0,0,0,0,0,0}
 v.field_q = [7]f64{0,0,0,0,0,0,0}
 v.field_q_d = [7]f64{0,0,0,0,0,0,0}
 v.field_dq = [7]f64{0,0,0,0,0,0,0}
 v.field_dq_d = [7]f64{0,0,0,0,0,0,0}
 v.field_ddq_d = [7]f64{0,0,0,0,0,0,0}
 v.field_theta = [7]f64{0,0,0,0,0,0,0}
 v.field_dtheta = [7]f64{0,0,0,0,0,0,0}
 v.field_tau_J = [7]f64{0,0,0,0,0,0,0}
 v.field_dtau_J = [7]f64{0,0,0,0,0,0,0}
 v.field_tau_J_d = [7]f64{0,0,0,0,0,0,0}
 v.field_K_F_ext_hat_K = [6]f64{0,0,0,0,0,0}
 v.field_elbow = [2]f64{0,0}
 v.field_elbow_d = [2]f64{0,0}
 v.field_elbow_c = [2]f64{0,0}
 v.field_delbow_c = [2]f64{0,0}
 v.field_ddelbow_c = [2]f64{0,0}
 v.field_joint_collision = [7]f64{0,0,0,0,0,0,0}
 v.field_joint_contact = [7]f64{0,0,0,0,0,0,0}
 v.field_O_F_ext_hat_K = [6]f64{0,0,0,0,0,0}
 v.field_O_dP_EE_d = [6]f64{0,0,0,0,0,0}
 v.field_O_ddP_O = [3]f64{0,0,0}
 v.field_O_dP_EE_c = [6]f64{0,0,0,0,0,0}
 v.field_O_ddP_EE_c = [6]f64{0,0,0,0,0,0}
 v.field_tau_ext_hat_filtered = [7]f64{0,0,0,0,0,0,0}
 v.field_m_ee = 0
 v.field_F_x_Cee = [3]f64{0,0,0}
 v.field_I_ee = [9]f64{0,0,0,0,0,0,0,0,0}
 v.field_m_load = 0
 v.field_F_x_Cload = [3]f64{0,0,0}
 v.field_I_load = [9]f64{0,0,0,0,0,0,0,0,0}
 v.field_m_total = 0
 v.field_F_x_Ctotal = [3]f64{0,0,0}
 v.field_I_total = [9]f64{0,0,0,0,0,0,0,0,0}
 v.field_O_T_EE = [16]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 v.field_O_T_EE_d = [16]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 v.field_O_T_EE_c = [16]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 v.field_F_T_EE = [16]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 v.field_F_T_NE = [16]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 v.field_NE_T_EE = [16]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 v.field_EE_T_K = [16]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 v.field_time = 0
 v.field_control_command_success_rate = 0
 v.field_robot_mode = 0
 v.field_current_errors = Ros1Franka_msgsErrors{}
 v.field_last_motion_errors = Ros1Franka_msgsErrors{}
 return v
}
// @brief Append every canonical field of franka_msgs/FrankaState.
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
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsFrankaState :: proc(v: ^Ros1Franka_msgsFrankaState, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 for e in v.field_cartesian_collision {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_cartesian_contact {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_q {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_q_d {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_dq {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_dq_d {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_ddq_d {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_theta {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_dtheta {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_tau_J {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_dtau_J {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_tau_J_d {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_K_F_ext_hat_K {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_elbow {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_elbow_d {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_elbow_c {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_delbow_c {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_ddelbow_c {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_joint_collision {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_joint_contact {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_O_F_ext_hat_K {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_O_dP_EE_d {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_O_ddP_O {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_O_dP_EE_c {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_O_ddP_EE_c {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_tau_ext_hat_filtered {
 if !put_float64(w,e) { return false }
 }
 if !put_float64(w,v.field_m_ee) { return false }
 for e in v.field_F_x_Cee {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_I_ee {
 if !put_float64(w,e) { return false }
 }
 if !put_float64(w,v.field_m_load) { return false }
 for e in v.field_F_x_Cload {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_I_load {
 if !put_float64(w,e) { return false }
 }
 if !put_float64(w,v.field_m_total) { return false }
 for e in v.field_F_x_Ctotal {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_I_total {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_O_T_EE {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_O_T_EE_d {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_O_T_EE_c {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_F_T_EE {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_F_T_NE {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_NE_T_EE {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_EE_T_K {
 if !put_float64(w,e) { return false }
 }
 if !put_float64(w,v.field_time) { return false }
 if !put_float64(w,v.field_control_command_success_rate) { return false }
 if !put_integer(w,u64(v.field_robot_mode),1) { return false }
 if !write_Ros1Franka_msgsErrors(&v.field_current_errors,w) { return false }
 if !write_Ros1Franka_msgsErrors(&v.field_last_motion_errors,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/FrankaState.
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
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsFrankaState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_msgsFrankaState,bool) {
 v:=init_Ros1Franka_msgsFrankaState()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 for &e in v.field_cartesian_collision {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_cartesian_contact {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_q {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_q_d {
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
 for &e in v.field_dq_d {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_ddq_d {
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
 for &e in v.field_dtheta {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_tau_J {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_dtau_J {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_tau_J_d {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_K_F_ext_hat_K {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_elbow {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_elbow_d {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_elbow_c {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_delbow_c {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_ddelbow_c {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_joint_collision {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_joint_contact {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_O_F_ext_hat_K {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_O_dP_EE_d {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_O_ddP_O {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_O_dP_EE_c {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_O_ddP_EE_c {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_tau_ext_hat_filtered {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_m_ee=f64(b)
 }
 for &e in v.field_F_x_Cee {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_I_ee {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_m_load=f64(b)
 }
 for &e in v.field_F_x_Cload {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_I_load {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_m_total=f64(b)
 }
 for &e in v.field_F_x_Ctotal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_I_total {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_O_T_EE {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_O_T_EE_d {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_O_T_EE_c {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_F_T_EE {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_F_T_NE {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_NE_T_EE {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_EE_T_K {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_time=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_control_command_success_rate=f64(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_robot_mode=u8(b)
 }
 {
 b,ok:=read_Ros1Franka_msgsErrors(r,allocator); if !ok { return v,false }
 v.field_current_errors=b
 }
 {
 b,ok:=read_Ros1Franka_msgsErrors(r,allocator); if !ok { return v,false }
 v.field_last_motion_errors=b
 }
 return v,true
}
// @brief Encode one complete franka_msgs/FrankaState value.
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
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsFrankaState :: proc(v: ^Ros1Franka_msgsFrankaState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2619}
 if !write_Ros1Franka_msgsFrankaState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2619}
 if !write_Ros1Franka_msgsFrankaState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/FrankaState value.
// @details Require the complete 2491..2619-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros1Franka_msgsFrankaState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsFrankaState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_msgsFrankaState,u32) {
 if len(bytes)<2491 || len(bytes)>2619 { return Ros1Franka_msgsFrankaState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsFrankaState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsFrankaState{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/SetCartesianImpedanceRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
// is identified by UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetCartesianImpedanceRequest :: struct {
 // @brief franka_msgs/SetCartesianImpedanceRequest.cartesian_stiffness: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_stiffness: [6]f64,
}
// @brief Maximum canonical extent of franka_msgs/SetCartesianImpedanceRequest in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetCartesianImpedanceRequest_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of franka_msgs/SetCartesianImpedanceRequest.
// @details Exact identity UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetCartesianImpedanceRequest_Codec_Identity ::
        "UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf"
// @brief Original ROS type name for franka_msgs/SetCartesianImpedanceRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetCartesianImpedanceRequest_Native_Type :: "franka_msgs/SetCartesianImpedanceRequest"
// @brief Selected original native identity for franka_msgs/SetCartesianImpedanceRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetCartesianImpedanceRequest_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/SetCartesianImpedanceRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsSetCartesianImpedanceRequest :: proc() -> Ros1Franka_msgsSetCartesianImpedanceRequest {
 v: Ros1Franka_msgsSetCartesianImpedanceRequest
 v.field_cartesian_stiffness = [6]f64{0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/SetCartesianImpedanceRequest.
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
// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsSetCartesianImpedanceRequest :: proc(v: ^Ros1Franka_msgsSetCartesianImpedanceRequest, w: ^Writer) -> bool {
 for e in v.field_cartesian_stiffness {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/SetCartesianImpedanceRequest.
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
// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsSetCartesianImpedanceRequest :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetCartesianImpedanceRequest,bool) {
 v:=init_Ros1Franka_msgsSetCartesianImpedanceRequest()
 for &e in v.field_cartesian_stiffness {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/SetCartesianImpedanceRequest value.
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
// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsSetCartesianImpedanceRequest :: proc(v: ^Ros1Franka_msgsSetCartesianImpedanceRequest, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros1Franka_msgsSetCartesianImpedanceRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros1Franka_msgsSetCartesianImpedanceRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/SetCartesianImpedanceRequest value.
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
// @see Ros1Franka_msgsSetCartesianImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsSetCartesianImpedanceRequest :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetCartesianImpedanceRequest,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros1Franka_msgsSetCartesianImpedanceRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsSetCartesianImpedanceRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsSetCartesianImpedanceRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/SetCartesianImpedanceResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetCartesianImpedanceResponse :: struct {
 // @brief franka_msgs/SetCartesianImpedanceResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/SetCartesianImpedanceResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/SetCartesianImpedanceResponse in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetCartesianImpedanceResponse_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/SetCartesianImpedanceResponse.
// @details Exact identity UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetCartesianImpedanceResponse_Codec_Identity ::
        "UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b"
// @brief Original ROS type name for franka_msgs/SetCartesianImpedanceResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetCartesianImpedanceResponse_Native_Type :: "franka_msgs/SetCartesianImpedanceResponse"
// @brief Selected original native identity for franka_msgs/SetCartesianImpedanceResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetCartesianImpedanceResponse_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/SetCartesianImpedanceResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsSetCartesianImpedanceResponse :: proc() -> Ros1Franka_msgsSetCartesianImpedanceResponse {
 v: Ros1Franka_msgsSetCartesianImpedanceResponse
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/SetCartesianImpedanceResponse.
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
// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsSetCartesianImpedanceResponse :: proc(v: ^Ros1Franka_msgsSetCartesianImpedanceResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/SetCartesianImpedanceResponse.
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
// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsSetCartesianImpedanceResponse :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetCartesianImpedanceResponse,bool) {
 v:=init_Ros1Franka_msgsSetCartesianImpedanceResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete franka_msgs/SetCartesianImpedanceResponse value.
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
// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsSetCartesianImpedanceResponse :: proc(v: ^Ros1Franka_msgsSetCartesianImpedanceResponse, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Franka_msgsSetCartesianImpedanceResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Franka_msgsSetCartesianImpedanceResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/SetCartesianImpedanceResponse value.
// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsSetCartesianImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsSetCartesianImpedanceResponse :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetCartesianImpedanceResponse,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Franka_msgsSetCartesianImpedanceResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsSetCartesianImpedanceResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsSetCartesianImpedanceResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/SetEEFrameRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 128..128 bytes and
// is identified by UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetEEFrameRequest :: struct {
 // @brief franka_msgs/SetEEFrameRequest.NE_T_EE: float64; exactly 16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/odin/API-CONTRACT.md
 field_NE_T_EE: [16]f64,
}
// @brief Maximum canonical extent of franka_msgs/SetEEFrameRequest in bytes.
// @details The inclusive bound is 128 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetEEFrameRequest_Maximum_Wire_Bytes :: 128
// @brief Canonical codec identity of franka_msgs/SetEEFrameRequest.
// @details Exact identity UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetEEFrameRequest_Codec_Identity :: "UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc"
// @brief Original ROS type name for franka_msgs/SetEEFrameRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetEEFrameRequest_Native_Type :: "franka_msgs/SetEEFrameRequest"
// @brief Selected original native identity for franka_msgs/SetEEFrameRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetEEFrameRequest_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/SetEEFrameRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsSetEEFrameRequest :: proc() -> Ros1Franka_msgsSetEEFrameRequest {
 v: Ros1Franka_msgsSetEEFrameRequest
 v.field_NE_T_EE = [16]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/SetEEFrameRequest.
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
// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsSetEEFrameRequest :: proc(v: ^Ros1Franka_msgsSetEEFrameRequest, w: ^Writer) -> bool {
 for e in v.field_NE_T_EE {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/SetEEFrameRequest.
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
// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsSetEEFrameRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_msgsSetEEFrameRequest,bool) {
 v:=init_Ros1Franka_msgsSetEEFrameRequest()
 for &e in v.field_NE_T_EE {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/SetEEFrameRequest value.
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
// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsSetEEFrameRequest :: proc(v: ^Ros1Franka_msgsSetEEFrameRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=128}
 if !write_Ros1Franka_msgsSetEEFrameRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=128}
 if !write_Ros1Franka_msgsSetEEFrameRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/SetEEFrameRequest value.
// @details Require the complete 128..128-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsSetEEFrameRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsSetEEFrameRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_msgsSetEEFrameRequest,u32)
        {
 if len(bytes)<128 || len(bytes)>128 { return Ros1Franka_msgsSetEEFrameRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsSetEEFrameRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsSetEEFrameRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/SetEEFrameResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetEEFrameResponse :: struct {
 // @brief franka_msgs/SetEEFrameResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/SetEEFrameResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/SetEEFrameResponse in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetEEFrameResponse_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/SetEEFrameResponse.
// @details Exact identity UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetEEFrameResponse_Codec_Identity :: "UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67"
// @brief Original ROS type name for franka_msgs/SetEEFrameResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetEEFrameResponse_Native_Type :: "franka_msgs/SetEEFrameResponse"
// @brief Selected original native identity for franka_msgs/SetEEFrameResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetEEFrameResponse_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/SetEEFrameResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsSetEEFrameResponse :: proc() -> Ros1Franka_msgsSetEEFrameResponse {
 v: Ros1Franka_msgsSetEEFrameResponse
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/SetEEFrameResponse.
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
// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsSetEEFrameResponse :: proc(v: ^Ros1Franka_msgsSetEEFrameResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/SetEEFrameResponse.
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
// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsSetEEFrameResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_msgsSetEEFrameResponse,bool)
        {
 v:=init_Ros1Franka_msgsSetEEFrameResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete franka_msgs/SetEEFrameResponse value.
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
// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsSetEEFrameResponse :: proc(v: ^Ros1Franka_msgsSetEEFrameResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Franka_msgsSetEEFrameResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Franka_msgsSetEEFrameResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/SetEEFrameResponse value.
// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsSetEEFrameResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsSetEEFrameResponse :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetEEFrameResponse,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Franka_msgsSetEEFrameResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsSetEEFrameResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsSetEEFrameResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/SetForceTorqueCollisionBehaviorRequest value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 208..208 bytes and
// is identified by UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest :: struct {
 // @brief franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_torque_thresholds_nominal: float64; exactly 7
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
 field_lower_torque_thresholds_nominal: [7]f64,
 // @brief franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_torque_thresholds_nominal: float64; exactly 7
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
 field_upper_torque_thresholds_nominal: [7]f64,
 // @brief franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_force_thresholds_nominal: float64; exactly 6
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
 field_lower_force_thresholds_nominal: [6]f64,
 // @brief franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_force_thresholds_nominal: float64; exactly 6
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
 field_upper_force_thresholds_nominal: [6]f64,
}
// @brief Maximum canonical extent of franka_msgs/SetForceTorqueCollisionBehaviorRequest in bytes.
// @details The inclusive bound is 208 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_Maximum_Wire_Bytes :: 208
// @brief Canonical codec identity of franka_msgs/SetForceTorqueCollisionBehaviorRequest.
// @details Exact identity UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_Codec_Identity ::
        "UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5"
// @brief Original ROS type name for franka_msgs/SetForceTorqueCollisionBehaviorRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_Native_Type :: "franka_msgs/SetForceTorqueCollisionBehaviorRequest"
// @brief Selected original native identity for franka_msgs/SetForceTorqueCollisionBehaviorRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/SetForceTorqueCollisionBehaviorRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest :: proc() -> Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest {
 v: Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest
 v.field_lower_torque_thresholds_nominal = [7]f64{0,0,0,0,0,0,0}
 v.field_upper_torque_thresholds_nominal = [7]f64{0,0,0,0,0,0,0}
 v.field_lower_force_thresholds_nominal = [6]f64{0,0,0,0,0,0}
 v.field_upper_force_thresholds_nominal = [6]f64{0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/SetForceTorqueCollisionBehaviorRequest.
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
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest :: proc(v: ^Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest, w:
        ^Writer) -> bool {
 for e in v.field_lower_torque_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_upper_torque_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_lower_force_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_upper_force_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/SetForceTorqueCollisionBehaviorRequest.
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
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest,bool) {
 v:=init_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest()
 for &e in v.field_lower_torque_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_upper_torque_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_lower_force_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_upper_force_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/SetForceTorqueCollisionBehaviorRequest value.
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
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest :: proc(v: ^Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest,
        output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=208}
 if !write_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=208}
 if !write_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/SetForceTorqueCollisionBehaviorRequest value.
// @details Require the complete 208..208-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest,u32) {
 if len(bytes)<208 || len(bytes)>208 { return Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/SetForceTorqueCollisionBehaviorResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse :: struct {
 // @brief franka_msgs/SetForceTorqueCollisionBehaviorResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/SetForceTorqueCollisionBehaviorResponse.error: string; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/SetForceTorqueCollisionBehaviorResponse in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/SetForceTorqueCollisionBehaviorResponse.
// @details Exact identity UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_Codec_Identity ::
        "UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5"
// @brief Original ROS type name for franka_msgs/SetForceTorqueCollisionBehaviorResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_Native_Type :: "franka_msgs/SetForceTorqueCollisionBehaviorResponse"
// @brief Selected original native identity for franka_msgs/SetForceTorqueCollisionBehaviorResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/SetForceTorqueCollisionBehaviorResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse :: proc() -> Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse {
 v: Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/SetForceTorqueCollisionBehaviorResponse.
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
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse :: proc(v: ^Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse, w:
        ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/SetForceTorqueCollisionBehaviorResponse.
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
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse,bool) {
 v:=init_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete franka_msgs/SetForceTorqueCollisionBehaviorResponse value.
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
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse :: proc(v: ^Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse,
        output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/SetForceTorqueCollisionBehaviorResponse value.
// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/SetFullCollisionBehaviorRequest value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies 416..416 bytes and
// is identified by UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetFullCollisionBehaviorRequest :: struct {
 // @brief franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_acceleration: float64; exactly 7
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
 field_lower_torque_thresholds_acceleration: [7]f64,
 // @brief franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_acceleration: float64; exactly 7
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
 field_upper_torque_thresholds_acceleration: [7]f64,
 // @brief franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_nominal: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
 field_lower_torque_thresholds_nominal: [7]f64,
 // @brief franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_nominal: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
 field_upper_torque_thresholds_nominal: [7]f64,
 // @brief franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_acceleration: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
 field_lower_force_thresholds_acceleration: [6]f64,
 // @brief franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_acceleration: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
 field_upper_force_thresholds_acceleration: [6]f64,
 // @brief franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_nominal: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
 field_lower_force_thresholds_nominal: [6]f64,
 // @brief franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_nominal: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
 field_upper_force_thresholds_nominal: [6]f64,
}
// @brief Maximum canonical extent of franka_msgs/SetFullCollisionBehaviorRequest in bytes.
// @details The inclusive bound is 416 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetFullCollisionBehaviorRequest_Maximum_Wire_Bytes :: 416
// @brief Canonical codec identity of franka_msgs/SetFullCollisionBehaviorRequest.
// @details Exact identity UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetFullCollisionBehaviorRequest_Codec_Identity ::
        "UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c"
// @brief Original ROS type name for franka_msgs/SetFullCollisionBehaviorRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetFullCollisionBehaviorRequest_Native_Type :: "franka_msgs/SetFullCollisionBehaviorRequest"
// @brief Selected original native identity for franka_msgs/SetFullCollisionBehaviorRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetFullCollisionBehaviorRequest_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/SetFullCollisionBehaviorRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsSetFullCollisionBehaviorRequest :: proc() -> Ros1Franka_msgsSetFullCollisionBehaviorRequest {
 v: Ros1Franka_msgsSetFullCollisionBehaviorRequest
 v.field_lower_torque_thresholds_acceleration = [7]f64{0,0,0,0,0,0,0}
 v.field_upper_torque_thresholds_acceleration = [7]f64{0,0,0,0,0,0,0}
 v.field_lower_torque_thresholds_nominal = [7]f64{0,0,0,0,0,0,0}
 v.field_upper_torque_thresholds_nominal = [7]f64{0,0,0,0,0,0,0}
 v.field_lower_force_thresholds_acceleration = [6]f64{0,0,0,0,0,0}
 v.field_upper_force_thresholds_acceleration = [6]f64{0,0,0,0,0,0}
 v.field_lower_force_thresholds_nominal = [6]f64{0,0,0,0,0,0}
 v.field_upper_force_thresholds_nominal = [6]f64{0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/SetFullCollisionBehaviorRequest.
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
// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsSetFullCollisionBehaviorRequest :: proc(v: ^Ros1Franka_msgsSetFullCollisionBehaviorRequest, w: ^Writer) -> bool
        {
 for e in v.field_lower_torque_thresholds_acceleration {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_upper_torque_thresholds_acceleration {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_lower_torque_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_upper_torque_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_lower_force_thresholds_acceleration {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_upper_force_thresholds_acceleration {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_lower_force_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_upper_force_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/SetFullCollisionBehaviorRequest.
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
// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsSetFullCollisionBehaviorRequest :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetFullCollisionBehaviorRequest,bool) {
 v:=init_Ros1Franka_msgsSetFullCollisionBehaviorRequest()
 for &e in v.field_lower_torque_thresholds_acceleration {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_upper_torque_thresholds_acceleration {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_lower_torque_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_upper_torque_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_lower_force_thresholds_acceleration {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_upper_force_thresholds_acceleration {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_lower_force_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_upper_force_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/SetFullCollisionBehaviorRequest value.
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
// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsSetFullCollisionBehaviorRequest :: proc(v: ^Ros1Franka_msgsSetFullCollisionBehaviorRequest, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=416}
 if !write_Ros1Franka_msgsSetFullCollisionBehaviorRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=416}
 if !write_Ros1Franka_msgsSetFullCollisionBehaviorRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/SetFullCollisionBehaviorRequest value.
// @details Require the complete 416..416-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsSetFullCollisionBehaviorRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsSetFullCollisionBehaviorRequest :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetFullCollisionBehaviorRequest,u32) {
 if len(bytes)<416 || len(bytes)>416 { return Ros1Franka_msgsSetFullCollisionBehaviorRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsSetFullCollisionBehaviorRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsSetFullCollisionBehaviorRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/SetFullCollisionBehaviorResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetFullCollisionBehaviorResponse :: struct {
 // @brief franka_msgs/SetFullCollisionBehaviorResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/SetFullCollisionBehaviorResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/SetFullCollisionBehaviorResponse in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetFullCollisionBehaviorResponse_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/SetFullCollisionBehaviorResponse.
// @details Exact identity UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetFullCollisionBehaviorResponse_Codec_Identity ::
        "UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2"
// @brief Original ROS type name for franka_msgs/SetFullCollisionBehaviorResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetFullCollisionBehaviorResponse_Native_Type :: "franka_msgs/SetFullCollisionBehaviorResponse"
// @brief Selected original native identity for franka_msgs/SetFullCollisionBehaviorResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetFullCollisionBehaviorResponse_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/SetFullCollisionBehaviorResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsSetFullCollisionBehaviorResponse :: proc() -> Ros1Franka_msgsSetFullCollisionBehaviorResponse {
 v: Ros1Franka_msgsSetFullCollisionBehaviorResponse
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/SetFullCollisionBehaviorResponse.
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
// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsSetFullCollisionBehaviorResponse :: proc(v: ^Ros1Franka_msgsSetFullCollisionBehaviorResponse, w: ^Writer) ->
        bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/SetFullCollisionBehaviorResponse.
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
// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsSetFullCollisionBehaviorResponse :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetFullCollisionBehaviorResponse,bool) {
 v:=init_Ros1Franka_msgsSetFullCollisionBehaviorResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete franka_msgs/SetFullCollisionBehaviorResponse value.
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
// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsSetFullCollisionBehaviorResponse :: proc(v: ^Ros1Franka_msgsSetFullCollisionBehaviorResponse, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Franka_msgsSetFullCollisionBehaviorResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Franka_msgsSetFullCollisionBehaviorResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/SetFullCollisionBehaviorResponse value.
// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsSetFullCollisionBehaviorResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsSetFullCollisionBehaviorResponse :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetFullCollisionBehaviorResponse,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Franka_msgsSetFullCollisionBehaviorResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsSetFullCollisionBehaviorResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsSetFullCollisionBehaviorResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/SetJointImpedanceRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 56..56 bytes and
// is identified by UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetJointImpedanceRequest :: struct {
 // @brief franka_msgs/SetJointImpedanceRequest.joint_stiffness: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
 field_joint_stiffness: [7]f64,
}
// @brief Maximum canonical extent of franka_msgs/SetJointImpedanceRequest in bytes.
// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetJointImpedanceRequest_Maximum_Wire_Bytes :: 56
// @brief Canonical codec identity of franka_msgs/SetJointImpedanceRequest.
// @details Exact identity UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetJointImpedanceRequest_Codec_Identity ::
        "UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53"
// @brief Original ROS type name for franka_msgs/SetJointImpedanceRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetJointImpedanceRequest_Native_Type :: "franka_msgs/SetJointImpedanceRequest"
// @brief Selected original native identity for franka_msgs/SetJointImpedanceRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetJointImpedanceRequest_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/SetJointImpedanceRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsSetJointImpedanceRequest :: proc() -> Ros1Franka_msgsSetJointImpedanceRequest {
 v: Ros1Franka_msgsSetJointImpedanceRequest
 v.field_joint_stiffness = [7]f64{0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/SetJointImpedanceRequest.
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
// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsSetJointImpedanceRequest :: proc(v: ^Ros1Franka_msgsSetJointImpedanceRequest, w: ^Writer) -> bool {
 for e in v.field_joint_stiffness {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/SetJointImpedanceRequest.
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
// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsSetJointImpedanceRequest :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetJointImpedanceRequest,bool) {
 v:=init_Ros1Franka_msgsSetJointImpedanceRequest()
 for &e in v.field_joint_stiffness {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/SetJointImpedanceRequest value.
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
// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsSetJointImpedanceRequest :: proc(v: ^Ros1Franka_msgsSetJointImpedanceRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=56}
 if !write_Ros1Franka_msgsSetJointImpedanceRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=56}
 if !write_Ros1Franka_msgsSetJointImpedanceRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/SetJointImpedanceRequest value.
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
// @see Ros1Franka_msgsSetJointImpedanceRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsSetJointImpedanceRequest :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetJointImpedanceRequest,u32) {
 if len(bytes)<56 || len(bytes)>56 { return Ros1Franka_msgsSetJointImpedanceRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsSetJointImpedanceRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsSetJointImpedanceRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/SetJointImpedanceResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetJointImpedanceResponse :: struct {
 // @brief franka_msgs/SetJointImpedanceResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/SetJointImpedanceResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/SetJointImpedanceResponse in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetJointImpedanceResponse_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/SetJointImpedanceResponse.
// @details Exact identity UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetJointImpedanceResponse_Codec_Identity ::
        "UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55"
// @brief Original ROS type name for franka_msgs/SetJointImpedanceResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetJointImpedanceResponse_Native_Type :: "franka_msgs/SetJointImpedanceResponse"
// @brief Selected original native identity for franka_msgs/SetJointImpedanceResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetJointImpedanceResponse_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/SetJointImpedanceResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsSetJointImpedanceResponse :: proc() -> Ros1Franka_msgsSetJointImpedanceResponse {
 v: Ros1Franka_msgsSetJointImpedanceResponse
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/SetJointImpedanceResponse.
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
// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsSetJointImpedanceResponse :: proc(v: ^Ros1Franka_msgsSetJointImpedanceResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/SetJointImpedanceResponse.
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
// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsSetJointImpedanceResponse :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetJointImpedanceResponse,bool) {
 v:=init_Ros1Franka_msgsSetJointImpedanceResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete franka_msgs/SetJointImpedanceResponse value.
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
// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsSetJointImpedanceResponse :: proc(v: ^Ros1Franka_msgsSetJointImpedanceResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Franka_msgsSetJointImpedanceResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Franka_msgsSetJointImpedanceResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/SetJointImpedanceResponse value.
// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsSetJointImpedanceResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsSetJointImpedanceResponse :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros1Franka_msgsSetJointImpedanceResponse,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Franka_msgsSetJointImpedanceResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsSetJointImpedanceResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsSetJointImpedanceResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/SetKFrameRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 128..128 bytes and
// is identified by UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetKFrameRequest :: struct {
 // @brief franka_msgs/SetKFrameRequest.EE_T_K: float64; exactly 16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/odin/API-CONTRACT.md
 field_EE_T_K: [16]f64,
}
// @brief Maximum canonical extent of franka_msgs/SetKFrameRequest in bytes.
// @details The inclusive bound is 128 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetKFrameRequest_Maximum_Wire_Bytes :: 128
// @brief Canonical codec identity of franka_msgs/SetKFrameRequest.
// @details Exact identity UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetKFrameRequest_Codec_Identity :: "UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446"
// @brief Original ROS type name for franka_msgs/SetKFrameRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetKFrameRequest_Native_Type :: "franka_msgs/SetKFrameRequest"
// @brief Selected original native identity for franka_msgs/SetKFrameRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetKFrameRequest_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/SetKFrameRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsSetKFrameRequest :: proc() -> Ros1Franka_msgsSetKFrameRequest {
 v: Ros1Franka_msgsSetKFrameRequest
 v.field_EE_T_K = [16]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/SetKFrameRequest.
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
// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsSetKFrameRequest :: proc(v: ^Ros1Franka_msgsSetKFrameRequest, w: ^Writer) -> bool {
 for e in v.field_EE_T_K {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/SetKFrameRequest.
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
// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsSetKFrameRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_msgsSetKFrameRequest,bool) {
 v:=init_Ros1Franka_msgsSetKFrameRequest()
 for &e in v.field_EE_T_K {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/SetKFrameRequest value.
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
// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsSetKFrameRequest :: proc(v: ^Ros1Franka_msgsSetKFrameRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=128}
 if !write_Ros1Franka_msgsSetKFrameRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=128}
 if !write_Ros1Franka_msgsSetKFrameRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/SetKFrameRequest value.
// @details Require the complete 128..128-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsSetKFrameRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsSetKFrameRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_msgsSetKFrameRequest,u32) {
 if len(bytes)<128 || len(bytes)>128 { return Ros1Franka_msgsSetKFrameRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsSetKFrameRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsSetKFrameRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/SetKFrameResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetKFrameResponse :: struct {
 // @brief franka_msgs/SetKFrameResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/SetKFrameResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/SetKFrameResponse in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetKFrameResponse_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/SetKFrameResponse.
// @details Exact identity UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetKFrameResponse_Codec_Identity :: "UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443"
// @brief Original ROS type name for franka_msgs/SetKFrameResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetKFrameResponse_Native_Type :: "franka_msgs/SetKFrameResponse"
// @brief Selected original native identity for franka_msgs/SetKFrameResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetKFrameResponse_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/SetKFrameResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsSetKFrameResponse :: proc() -> Ros1Franka_msgsSetKFrameResponse {
 v: Ros1Franka_msgsSetKFrameResponse
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/SetKFrameResponse.
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
// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsSetKFrameResponse :: proc(v: ^Ros1Franka_msgsSetKFrameResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/SetKFrameResponse.
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
// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsSetKFrameResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_msgsSetKFrameResponse,bool) {
 v:=init_Ros1Franka_msgsSetKFrameResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete franka_msgs/SetKFrameResponse value.
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
// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsSetKFrameResponse :: proc(v: ^Ros1Franka_msgsSetKFrameResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Franka_msgsSetKFrameResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Franka_msgsSetKFrameResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/SetKFrameResponse value.
// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsSetKFrameResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsSetKFrameResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_msgsSetKFrameResponse,u32)
        {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Franka_msgsSetKFrameResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsSetKFrameResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsSetKFrameResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/SetLoadRequest value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 104..104 bytes and
// is identified by UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetLoadRequest :: struct {
 // @brief franka_msgs/SetLoadRequest.mass: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
 field_mass: f64,
 // @brief franka_msgs/SetLoadRequest.F_x_center_load: float64; exactly 3 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
 field_F_x_center_load: [3]f64,
 // @brief franka_msgs/SetLoadRequest.load_inertia: float64; exactly 9 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
 field_load_inertia: [9]f64,
}
// @brief Maximum canonical extent of franka_msgs/SetLoadRequest in bytes.
// @details The inclusive bound is 104 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetLoadRequest_Maximum_Wire_Bytes :: 104
// @brief Canonical codec identity of franka_msgs/SetLoadRequest.
// @details Exact identity UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetLoadRequest_Codec_Identity :: "UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5"
// @brief Original ROS type name for franka_msgs/SetLoadRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetLoadRequest_Native_Type :: "franka_msgs/SetLoadRequest"
// @brief Selected original native identity for franka_msgs/SetLoadRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetLoadRequest_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/SetLoadRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsSetLoadRequest :: proc() -> Ros1Franka_msgsSetLoadRequest {
 v: Ros1Franka_msgsSetLoadRequest
 v.field_mass = 0
 v.field_F_x_center_load = [3]f64{0,0,0}
 v.field_load_inertia = [9]f64{0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/SetLoadRequest.
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
// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsSetLoadRequest :: proc(v: ^Ros1Franka_msgsSetLoadRequest, w: ^Writer) -> bool {
 if !put_float64(w,v.field_mass) { return false }
 for e in v.field_F_x_center_load {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_load_inertia {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/SetLoadRequest.
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
// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsSetLoadRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_msgsSetLoadRequest,bool) {
 v:=init_Ros1Franka_msgsSetLoadRequest()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_mass=f64(b)
 }
 for &e in v.field_F_x_center_load {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_load_inertia {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/SetLoadRequest value.
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
// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsSetLoadRequest :: proc(v: ^Ros1Franka_msgsSetLoadRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=104}
 if !write_Ros1Franka_msgsSetLoadRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=104}
 if !write_Ros1Franka_msgsSetLoadRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/SetLoadRequest value.
// @details Require the complete 104..104-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsSetLoadRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_msgsSetLoadRequest,u32) {
 if len(bytes)<104 || len(bytes)>104 { return Ros1Franka_msgsSetLoadRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsSetLoadRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsSetLoadRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 franka_msgs/SetLoadResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetLoadResponse :: struct {
 // @brief franka_msgs/SetLoadResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/SetLoadResponse.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/SetLoadResponse in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetLoadResponse_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/SetLoadResponse.
// @details Exact identity UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetLoadResponse_Codec_Identity :: "UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3"
// @brief Original ROS type name for franka_msgs/SetLoadResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetLoadResponse_Native_Type :: "franka_msgs/SetLoadResponse"
// @brief Selected original native identity for franka_msgs/SetLoadResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Franka_msgsSetLoadResponse_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/SetLoadResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Franka_msgsSetLoadResponse :: proc() -> Ros1Franka_msgsSetLoadResponse {
 v: Ros1Franka_msgsSetLoadResponse
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/SetLoadResponse.
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
// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Franka_msgsSetLoadResponse :: proc(v: ^Ros1Franka_msgsSetLoadResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/SetLoadResponse.
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
// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Franka_msgsSetLoadResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Franka_msgsSetLoadResponse,bool) {
 v:=init_Ros1Franka_msgsSetLoadResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete franka_msgs/SetLoadResponse value.
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
// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Franka_msgsSetLoadResponse :: proc(v: ^Ros1Franka_msgsSetLoadResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Franka_msgsSetLoadResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Franka_msgsSetLoadResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/SetLoadResponse value.
// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Franka_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Franka_msgsSetLoadResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Franka_msgsSetLoadResponse,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Franka_msgsSetLoadResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Franka_msgsSetLoadResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Franka_msgsSetLoadResponse{},reader.code }
 return value,0
}
