// @file records.odin
// @brief Preserve the complete original ufactory/ros1_master canonical value domain.
// @details The selected domain contains 84 complete record/components and 196 original fields. Declared
// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
// does not qualify a frontend, target ABI or native ROS transport.
// @see The platform's localized language guide and complete API-CATALOG.md.
package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 1 xarm_gripper/MoveGoal value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8
// bytes and is identified by UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveGoal :: struct {
 // @brief xarm_gripper/MoveGoal.target_pulse: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
 field_target_pulse: f32,
 // @brief xarm_gripper/MoveGoal.pulse_speed: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
 field_pulse_speed: f32,
}
// @brief Maximum canonical extent of xarm_gripper/MoveGoal in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveGoal_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of xarm_gripper/MoveGoal.
// @details Exact identity UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveGoal_Codec_Identity :: "UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e"
// @brief Original ROS type name for xarm_gripper/MoveGoal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveGoal_Native_Type :: "xarm_gripper/MoveGoal"
// @brief Selected original native identity for xarm_gripper/MoveGoal.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveGoal_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_gripper/MoveGoal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_gripperMoveGoal :: proc() -> Ros1Xarm_gripperMoveGoal {
 v: Ros1Xarm_gripperMoveGoal
 v.field_target_pulse = 0
 v.field_pulse_speed = 0
 return v
}
// @brief Append every canonical field of xarm_gripper/MoveGoal.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_gripperMoveGoal :: proc(v: ^Ros1Xarm_gripperMoveGoal, w: ^Writer) -> bool {
 if !put_float32(w,v.field_target_pulse) { return false }
 if !put_float32(w,v.field_pulse_speed) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_gripper/MoveGoal.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_gripperMoveGoal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_gripperMoveGoal,bool) {
 v:=init_Ros1Xarm_gripperMoveGoal()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_target_pulse=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_pulse_speed=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_gripper/MoveGoal value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_gripperMoveGoal :: proc(v: ^Ros1Xarm_gripperMoveGoal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Xarm_gripperMoveGoal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Xarm_gripperMoveGoal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_gripper/MoveGoal value.
// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveGoal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_gripperMoveGoal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_gripperMoveGoal,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Xarm_gripperMoveGoal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_gripperMoveGoal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_gripperMoveGoal{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_gripper/MoveResult value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 3..3
// bytes and is identified by UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveResult :: struct {
 // @brief xarm_gripper/MoveResult.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief xarm_gripper/MoveResult.err_code: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
 field_err_code: i16,
}
// @brief Maximum canonical extent of xarm_gripper/MoveResult in bytes.
// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveResult_Maximum_Wire_Bytes :: 3
// @brief Canonical codec identity of xarm_gripper/MoveResult.
// @details Exact identity UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveResult_Codec_Identity :: "UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c"
// @brief Original ROS type name for xarm_gripper/MoveResult.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveResult_Native_Type :: "xarm_gripper/MoveResult"
// @brief Selected original native identity for xarm_gripper/MoveResult.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveResult_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_gripper/MoveResult.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_gripperMoveResult :: proc() -> Ros1Xarm_gripperMoveResult {
 v: Ros1Xarm_gripperMoveResult
 v.field_success = false
 v.field_err_code = 0
 return v
}
// @brief Append every canonical field of xarm_gripper/MoveResult.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_gripperMoveResult :: proc(v: ^Ros1Xarm_gripperMoveResult, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_integer(w,u64(v.field_err_code),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_gripper/MoveResult.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_gripperMoveResult :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_gripperMoveResult,bool) {
 v:=init_Ros1Xarm_gripperMoveResult()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_err_code=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_gripper/MoveResult value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_gripperMoveResult :: proc(v: ^Ros1Xarm_gripperMoveResult, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=3}
 if !write_Ros1Xarm_gripperMoveResult(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=3}
 if !write_Ros1Xarm_gripperMoveResult(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_gripper/MoveResult value.
// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveResult; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_gripperMoveResult :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_gripperMoveResult,u32) {
 if len(bytes)<3 || len(bytes)>3 { return Ros1Xarm_gripperMoveResult{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_gripperMoveResult(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_gripperMoveResult{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_gripper/MoveFeedback value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4
// bytes and is identified by UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveFeedback :: struct {
 // @brief xarm_gripper/MoveFeedback.current_pulse: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
 field_current_pulse: f32,
}
// @brief Maximum canonical extent of xarm_gripper/MoveFeedback in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveFeedback_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of xarm_gripper/MoveFeedback.
// @details Exact identity UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveFeedback_Codec_Identity :: "UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6"
// @brief Original ROS type name for xarm_gripper/MoveFeedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveFeedback_Native_Type :: "xarm_gripper/MoveFeedback"
// @brief Selected original native identity for xarm_gripper/MoveFeedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_gripperMoveFeedback_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_gripper/MoveFeedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_gripperMoveFeedback :: proc() -> Ros1Xarm_gripperMoveFeedback {
 v: Ros1Xarm_gripperMoveFeedback
 v.field_current_pulse = 0
 return v
}
// @brief Append every canonical field of xarm_gripper/MoveFeedback.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_gripperMoveFeedback :: proc(v: ^Ros1Xarm_gripperMoveFeedback, w: ^Writer) -> bool {
 if !put_float32(w,v.field_current_pulse) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_gripper/MoveFeedback.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_gripperMoveFeedback :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_gripperMoveFeedback,bool) {
 v:=init_Ros1Xarm_gripperMoveFeedback()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_current_pulse=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_gripper/MoveFeedback value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_gripperMoveFeedback :: proc(v: ^Ros1Xarm_gripperMoveFeedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros1Xarm_gripperMoveFeedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros1Xarm_gripperMoveFeedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_gripper/MoveFeedback value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_gripperMoveFeedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_gripperMoveFeedback :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_gripperMoveFeedback,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros1Xarm_gripperMoveFeedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_gripperMoveFeedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_gripperMoveFeedback{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Point value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoint :: struct {
 // @brief geometry_msgs/Point.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
 field_x: f64,
 // @brief geometry_msgs/Point.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
 field_y: f64,
 // @brief geometry_msgs/Point.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
 field_z: f64,
}
// @brief Maximum canonical extent of geometry_msgs/Point in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoint_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of geometry_msgs/Point.
// @details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b binds
// field order, shape and bounds. It does not replace the native type identity.
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
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
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
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsPoint :: proc(v: ^Ros1Geometry_msgsPoint, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Point.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
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
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
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
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 32..32 bytes and is identified by
// UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsQuaternion :: struct {
 // @brief geometry_msgs/Quaternion.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_x: f64,
 // @brief geometry_msgs/Quaternion.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_y: f64,
 // @brief geometry_msgs/Quaternion.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_z: f64,
 // @brief geometry_msgs/Quaternion.w: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_w: f64,
}
// @brief Maximum canonical extent of geometry_msgs/Quaternion in bytes.
// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsQuaternion_Maximum_Wire_Bytes :: 32
// @brief Canonical codec identity of geometry_msgs/Quaternion.
// @details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934 binds
// field order, shape and bounds. It does not replace the native type identity.
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
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
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
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
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
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
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
// @details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
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
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 56..56 bytes and is identified by
// UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPose :: struct {
 // @brief geometry_msgs/Pose.position: geometry_msgs/Point.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
 field_position: Ros1Geometry_msgsPoint,
 // @brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
 field_orientation: Ros1Geometry_msgsQuaternion,
}
// @brief Maximum canonical extent of geometry_msgs/Pose in bytes.
// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPose_Maximum_Wire_Bytes :: 56
// @brief Canonical codec identity of geometry_msgs/Pose.
// @details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471 binds
// field order, shape and bounds. It does not replace the native type identity.
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
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Geometry_msgsPose :: proc() -> Ros1Geometry_msgsPose {
 v: Ros1Geometry_msgsPose
 v.field_position = Ros1Geometry_msgsPoint{}
 v.field_orientation = Ros1Geometry_msgsQuaternion{}
 return v
}
// @brief Append every canonical field of geometry_msgs/Pose.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsPose :: proc(v: ^Ros1Geometry_msgsPose, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsPoint(&v.field_position,w) { return false }
 if !write_Ros1Geometry_msgsQuaternion(&v.field_orientation,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Pose.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
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
// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Geometry_msgsPose :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPose,u32) {
 if len(bytes)<56 || len(bytes)>56 { return Ros1Geometry_msgsPose{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsPose(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsPose{},reader.code }
 return value,0
}
// @brief Complete ROS 1 time value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8
// bytes and is identified by UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Time :: struct {
 // @brief time.sec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
 field_sec: u32,
 // @brief time.nsec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
 field_nsec: u32,
}
// @brief Maximum canonical extent of time in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
Ros1Time_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of time.
// @details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds
// field order, shape and bounds. It does not replace the native type identity.
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
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Time :: proc() -> Ros1Time {
 v: Ros1Time
 v.field_sec = 0
 v.field_nsec = 0
 return v
}
// @brief Append every canonical field of time.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Time :: proc(v: ^Ros1Time, w: ^Writer) -> bool {
 if v.field_nsec >= 1000000000 { w.code=22; return false }
 if !put_integer(w,u64(v.field_sec),4) { return false }
 if !put_integer(w,u64(v.field_nsec),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of time.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
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
// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
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
// @details All 3 declared fields are retained in source order. The canonical representation occupies
// 16..272 bytes and is identified by
// UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader :: struct {
 // @brief std_msgs/Header.seq: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
 field_seq: u32,
 // @brief std_msgs/Header.stamp: time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
 field_stamp: Ros1Time,
 // @brief std_msgs/Header.frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
 field_frame_id: string,
}
// @brief Maximum canonical extent of std_msgs/Header in bytes.
// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader_Maximum_Wire_Bytes :: 272
// @brief Canonical codec identity of std_msgs/Header.
// @details Exact identity UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader_Codec_Identity :: "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7"
// @brief Original ROS type name for std_msgs/Header.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader_Native_Type :: "std_msgs/Header"
// @brief Selected original native identity for std_msgs/Header.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader_Native_Identity :: ""
// @brief Construct the declared defaults of std_msgs/Header.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
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
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Std_msgsHeader :: proc(v: ^Ros1Std_msgsHeader, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_seq),4) { return false }
 if !write_Ros1Time(&v.field_stamp,w) { return false }
 if !put_string(w,v.field_frame_id,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_msgs/Header.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
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
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_frame_id=b
 }
 return v,true
}
// @brief Encode one complete std_msgs/Header value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Std_msgsHeader :: proc(v: ^Ros1Std_msgsHeader, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=272}
 if !write_Ros1Std_msgsHeader(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=272}
 if !write_Ros1Std_msgsHeader(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_msgs/Header value.
// @details Require the complete 16..272-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Std_msgsHeader :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Std_msgsHeader,u32) {
 if len(bytes)<16 || len(bytes)>272 { return Ros1Std_msgsHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Std_msgsHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Std_msgsHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/CIOState value.
// @details All 9 declared fields are retained in source order. The canonical representation occupies
// 76..332 bytes and is identified by
// UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCIOState :: struct {
 // @brief xarm_msgs/CIOState.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros1Std_msgsHeader,
 // @brief xarm_msgs/CIOState.state: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
 field_state: i16,
 // @brief xarm_msgs/CIOState.code: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
 field_code: i16,
 // @brief xarm_msgs/CIOState.input_digitals: uint16; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
 field_input_digitals: [2]u16,
 // @brief xarm_msgs/CIOState.output_digitals: uint16; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
 field_output_digitals: [2]u16,
 // @brief xarm_msgs/CIOState.input_analogs: float32; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
 field_input_analogs: [2]f32,
 // @brief xarm_msgs/CIOState.output_analogs: float32; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
 field_output_analogs: [2]f32,
 // @brief xarm_msgs/CIOState.input_conf: uint8; exactly 16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
 field_input_conf: [16]u8,
 // @brief xarm_msgs/CIOState.output_conf: uint8; exactly 16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
 field_output_conf: [16]u8,
}
// @brief Maximum canonical extent of xarm_msgs/CIOState in bytes.
// @details The inclusive bound is 332 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCIOState_Maximum_Wire_Bytes :: 332
// @brief Canonical codec identity of xarm_msgs/CIOState.
// @details Exact identity UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCIOState_Codec_Identity :: "UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057"
// @brief Original ROS type name for xarm_msgs/CIOState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCIOState_Native_Type :: "xarm_msgs/CIOState"
// @brief Selected original native identity for xarm_msgs/CIOState.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCIOState_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/CIOState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsCIOState :: proc() -> Ros1Xarm_msgsCIOState {
 v: Ros1Xarm_msgsCIOState
 v.field_header = Ros1Std_msgsHeader{}
 v.field_state = 0
 v.field_code = 0
 v.field_input_digitals = [2]u16{0,0}
 v.field_output_digitals = [2]u16{0,0}
 v.field_input_analogs = [2]f32{0,0}
 v.field_output_analogs = [2]f32{0,0}
 v.field_input_conf = [16]u8{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 v.field_output_conf = [16]u8{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of xarm_msgs/CIOState.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsCIOState :: proc(v: ^Ros1Xarm_msgsCIOState, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if !put_integer(w,u64(v.field_state),2) { return false }
 if !put_integer(w,u64(v.field_code),2) { return false }
 for e in v.field_input_digitals {
 if !put_integer(w,u64(e),2) { return false }
 }
 for e in v.field_output_digitals {
 if !put_integer(w,u64(e),2) { return false }
 }
 for e in v.field_input_analogs {
 if !put_float32(w,e) { return false }
 }
 for e in v.field_output_analogs {
 if !put_float32(w,e) { return false }
 }
 for e in v.field_input_conf {
 if !put_integer(w,u64(e),1) { return false }
 }
 for e in v.field_output_conf {
 if !put_integer(w,u64(e),1) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/CIOState.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsCIOState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsCIOState,bool) {
 v:=init_Ros1Xarm_msgsCIOState()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_state=i16(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_code=i16(b)
 }
 for &e in v.field_input_digitals {
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 e=u16(b)
 }
 }
 for &e in v.field_output_digitals {
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 e=u16(b)
 }
 }
 for &e in v.field_input_analogs {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 for &e in v.field_output_analogs {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 for &e in v.field_input_conf {
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 e=u8(b)
 }
 }
 for &e in v.field_output_conf {
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 e=u8(b)
 }
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/CIOState value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsCIOState :: proc(v: ^Ros1Xarm_msgsCIOState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=332}
 if !write_Ros1Xarm_msgsCIOState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=332}
 if !write_Ros1Xarm_msgsCIOState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/CIOState value.
// @details Require the complete 76..332-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCIOState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsCIOState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsCIOState,u32) {
 if len(bytes)<76 || len(bytes)>332 { return Ros1Xarm_msgsCIOState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsCIOState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsCIOState{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/IOState value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 16..16 bytes and is identified by
// UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsIOState :: struct {
 // @brief xarm_msgs/IOState.digital_1: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsIOState; share/platform/ros/odin/API-CONTRACT.md
 field_digital_1: i32,
 // @brief xarm_msgs/IOState.digital_2: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsIOState; share/platform/ros/odin/API-CONTRACT.md
 field_digital_2: i32,
 // @brief xarm_msgs/IOState.analog_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsIOState; share/platform/ros/odin/API-CONTRACT.md
 field_analog_1: f32,
 // @brief xarm_msgs/IOState.analog_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsIOState; share/platform/ros/odin/API-CONTRACT.md
 field_analog_2: f32,
}
// @brief Maximum canonical extent of xarm_msgs/IOState in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsIOState; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsIOState_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of xarm_msgs/IOState.
// @details Exact identity UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsIOState; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsIOState_Codec_Identity :: "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996"
// @brief Original ROS type name for xarm_msgs/IOState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsIOState; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsIOState_Native_Type :: "xarm_msgs/IOState"
// @brief Selected original native identity for xarm_msgs/IOState.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsIOState; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsIOState_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/IOState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsIOState; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsIOState :: proc() -> Ros1Xarm_msgsIOState {
 v: Ros1Xarm_msgsIOState
 v.field_digital_1 = 0
 v.field_digital_2 = 0
 v.field_analog_1 = 0
 v.field_analog_2 = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/IOState.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsIOState; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsIOState :: proc(v: ^Ros1Xarm_msgsIOState, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_digital_1),4) { return false }
 if !put_integer(w,u64(v.field_digital_2),4) { return false }
 if !put_float32(w,v.field_analog_1) { return false }
 if !put_float32(w,v.field_analog_2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/IOState.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsIOState; share/platform/ros/odin/API-CONTRACT.md
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsIOState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsIOState :: proc(v: ^Ros1Xarm_msgsIOState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros1Xarm_msgsIOState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros1Xarm_msgsIOState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/IOState value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsIOState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsIOState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsIOState,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros1Xarm_msgsIOState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsIOState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsIOState{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/RobotMsg value.
// @details All 11 declared fields are retained in source order. The canonical representation occupies
// 82..366 bytes and is identified by
// UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsRobotMsg :: struct {
 // @brief xarm_msgs/RobotMsg.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros1Std_msgsHeader,
 // @brief xarm_msgs/RobotMsg.state: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
 field_state: i16,
 // @brief xarm_msgs/RobotMsg.mode: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
 field_mode: i16,
 // @brief xarm_msgs/RobotMsg.cmdnum: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
 field_cmdnum: i16,
 // @brief xarm_msgs/RobotMsg.mt_brake: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
 field_mt_brake: i16,
 // @brief xarm_msgs/RobotMsg.mt_able: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
 field_mt_able: i16,
 // @brief xarm_msgs/RobotMsg.err: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
 field_err: i16,
 // @brief xarm_msgs/RobotMsg.warn: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
 field_warn: i16,
 // @brief xarm_msgs/RobotMsg.angle: float32; 0..7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
 field_angle: []f32,
 // @brief xarm_msgs/RobotMsg.pose: float32; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
 field_pose: [6]f32,
 // @brief xarm_msgs/RobotMsg.offset: float32; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
 field_offset: [6]f32,
}
// @brief Maximum canonical extent of xarm_msgs/RobotMsg in bytes.
// @details The inclusive bound is 366 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsRobotMsg_Maximum_Wire_Bytes :: 366
// @brief Canonical codec identity of xarm_msgs/RobotMsg.
// @details Exact identity UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsRobotMsg_Codec_Identity :: "UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb"
// @brief Original ROS type name for xarm_msgs/RobotMsg.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsRobotMsg_Native_Type :: "xarm_msgs/RobotMsg"
// @brief Selected original native identity for xarm_msgs/RobotMsg.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsRobotMsg_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/RobotMsg.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsRobotMsg :: proc() -> Ros1Xarm_msgsRobotMsg {
 v: Ros1Xarm_msgsRobotMsg
 v.field_header = Ros1Std_msgsHeader{}
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
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsRobotMsg :: proc(v: ^Ros1Xarm_msgsRobotMsg, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if !put_integer(w,u64(v.field_state),2) { return false }
 if !put_integer(w,u64(v.field_mode),2) { return false }
 if !put_integer(w,u64(v.field_cmdnum),2) { return false }
 if !put_integer(w,u64(v.field_mt_brake),2) { return false }
 if !put_integer(w,u64(v.field_mt_able),2) { return false }
 if !put_integer(w,u64(v.field_err),2) { return false }
 if !put_integer(w,u64(v.field_warn),2) { return false }
 if len(v.field_angle)>7 { w.code=22; return false }
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
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsRobotMsg :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsRobotMsg,bool) {
 v:=init_Ros1Xarm_msgsRobotMsg()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
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
 if n>7 { r.code=22; return v,false }
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsRobotMsg :: proc(v: ^Ros1Xarm_msgsRobotMsg, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=366}
 if !write_Ros1Xarm_msgsRobotMsg(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=366}
 if !write_Ros1Xarm_msgsRobotMsg(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/RobotMsg value.
// @details Require the complete 82..366-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsRobotMsg :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsRobotMsg,u32) {
 if len(bytes)<82 || len(bytes)>366 { return Ros1Xarm_msgsRobotMsg{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsRobotMsg(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsRobotMsg{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/VeloMoveMsg value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 10..138 bytes and is identified by
// UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVeloMoveMsg :: struct {
 // @brief xarm_msgs/VeloMoveMsg.speeds: float32; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/odin/API-CONTRACT.md
 field_speeds: []f32,
 // @brief xarm_msgs/VeloMoveMsg.is_sync: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/odin/API-CONTRACT.md
 field_is_sync: bool,
 // @brief xarm_msgs/VeloMoveMsg.is_tool_coord: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/odin/API-CONTRACT.md
 field_is_tool_coord: bool,
 // @brief xarm_msgs/VeloMoveMsg.duration: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/odin/API-CONTRACT.md
 field_duration: f32,
}
// @brief Maximum canonical extent of xarm_msgs/VeloMoveMsg in bytes.
// @details The inclusive bound is 138 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVeloMoveMsg_Maximum_Wire_Bytes :: 138
// @brief Canonical codec identity of xarm_msgs/VeloMoveMsg.
// @details Exact identity UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVeloMoveMsg_Codec_Identity :: "UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032"
// @brief Original ROS type name for xarm_msgs/VeloMoveMsg.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVeloMoveMsg_Native_Type :: "xarm_msgs/VeloMoveMsg"
// @brief Selected original native identity for xarm_msgs/VeloMoveMsg.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVeloMoveMsg_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/VeloMoveMsg.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsVeloMoveMsg :: proc() -> Ros1Xarm_msgsVeloMoveMsg {
 v: Ros1Xarm_msgsVeloMoveMsg
 v.field_speeds = nil
 v.field_is_sync = false
 v.field_is_tool_coord = false
 v.field_duration = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/VeloMoveMsg.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsVeloMoveMsg :: proc(v: ^Ros1Xarm_msgsVeloMoveMsg, w: ^Writer) -> bool {
 if len(v.field_speeds)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_speeds)),4) { return false }
 for e in v.field_speeds {
 if !put_float32(w,e) { return false }
 }
 if !put_bool(w,v.field_is_sync) { return false }
 if !put_bool(w,v.field_is_tool_coord) { return false }
 if !put_float32(w,v.field_duration) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/VeloMoveMsg.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsVeloMoveMsg :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsVeloMoveMsg,bool) {
 v:=init_Ros1Xarm_msgsVeloMoveMsg()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_speeds=make([]f32,int(n),allocator)
 }
 for &e in v.field_speeds {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_sync=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_tool_coord=bool(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_duration=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/VeloMoveMsg value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsVeloMoveMsg :: proc(v: ^Ros1Xarm_msgsVeloMoveMsg, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=138}
 if !write_Ros1Xarm_msgsVeloMoveMsg(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=138}
 if !write_Ros1Xarm_msgsVeloMoveMsg(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/VeloMoveMsg value.
// @details Require the complete 10..138-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVeloMoveMsg; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsVeloMoveMsg :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsVeloMoveMsg,u32) {
 if len(bytes)<10 || len(bytes)>138 { return Ros1Xarm_msgsVeloMoveMsg{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsVeloMoveMsg(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsVeloMoveMsg{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/CallRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCallRequest :: struct {
}
// @brief Maximum canonical extent of xarm_msgs/CallRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsCallRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCallRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of xarm_msgs/CallRequest.
// @details Exact identity UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsCallRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCallRequest_Codec_Identity :: "UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328"
// @brief Original ROS type name for xarm_msgs/CallRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsCallRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCallRequest_Native_Type :: "xarm_msgs/CallRequest"
// @brief Selected original native identity for xarm_msgs/CallRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsCallRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCallRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/CallRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCallRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsCallRequest :: proc() -> Ros1Xarm_msgsCallRequest {
 v: Ros1Xarm_msgsCallRequest
 return v
}
// @brief Append every canonical field of xarm_msgs/CallRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCallRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsCallRequest :: proc(v: ^Ros1Xarm_msgsCallRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/CallRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCallRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsCallRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsCallRequest,bool) {
 v:=init_Ros1Xarm_msgsCallRequest()
 return v,true
}
// @brief Encode one complete xarm_msgs/CallRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCallRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsCallRequest :: proc(v: ^Ros1Xarm_msgsCallRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Xarm_msgsCallRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Xarm_msgsCallRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/CallRequest value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCallRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsCallRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsCallRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Xarm_msgsCallRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsCallRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsCallRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/CallResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCallResponse :: struct {
 // @brief xarm_msgs/CallResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsCallResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/CallResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsCallResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/CallResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsCallResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCallResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/CallResponse.
// @details Exact identity UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsCallResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCallResponse_Codec_Identity :: "UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0"
// @brief Original ROS type name for xarm_msgs/CallResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsCallResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCallResponse_Native_Type :: "xarm_msgs/CallResponse"
// @brief Selected original native identity for xarm_msgs/CallResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsCallResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsCallResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/CallResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCallResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsCallResponse :: proc() -> Ros1Xarm_msgsCallResponse {
 v: Ros1Xarm_msgsCallResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/CallResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCallResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsCallResponse :: proc(v: ^Ros1Xarm_msgsCallResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/CallResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCallResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsCallResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsCallResponse,bool) {
 v:=init_Ros1Xarm_msgsCallResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/CallResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCallResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsCallResponse :: proc(v: ^Ros1Xarm_msgsCallResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsCallResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsCallResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/CallResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsCallResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsCallResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsCallResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsCallResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsCallResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsCallResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/ClearErrRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsClearErrRequest :: struct {
}
// @brief Maximum canonical extent of xarm_msgs/ClearErrRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsClearErrRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of xarm_msgs/ClearErrRequest.
// @details Exact identity UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsClearErrRequest_Codec_Identity :: "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8"
// @brief Original ROS type name for xarm_msgs/ClearErrRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsClearErrRequest_Native_Type :: "xarm_msgs/ClearErrRequest"
// @brief Selected original native identity for xarm_msgs/ClearErrRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsClearErrRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/ClearErrRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsClearErrRequest :: proc() -> Ros1Xarm_msgsClearErrRequest {
 v: Ros1Xarm_msgsClearErrRequest
 return v
}
// @brief Append every canonical field of xarm_msgs/ClearErrRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsClearErrRequest :: proc(v: ^Ros1Xarm_msgsClearErrRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/ClearErrRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsClearErrRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsClearErrRequest,bool) {
 v:=init_Ros1Xarm_msgsClearErrRequest()
 return v,true
}
// @brief Encode one complete xarm_msgs/ClearErrRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsClearErrRequest :: proc(v: ^Ros1Xarm_msgsClearErrRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Xarm_msgsClearErrRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Xarm_msgsClearErrRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/ClearErrRequest value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsClearErrRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsClearErrRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Xarm_msgsClearErrRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsClearErrRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsClearErrRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/ClearErrResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsClearErrResponse :: struct {
 // @brief xarm_msgs/ClearErrResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/ClearErrResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/ClearErrResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsClearErrResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/ClearErrResponse.
// @details Exact identity UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsClearErrResponse_Codec_Identity :: "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054"
// @brief Original ROS type name for xarm_msgs/ClearErrResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsClearErrResponse_Native_Type :: "xarm_msgs/ClearErrResponse"
// @brief Selected original native identity for xarm_msgs/ClearErrResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsClearErrResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/ClearErrResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsClearErrResponse :: proc() -> Ros1Xarm_msgsClearErrResponse {
 v: Ros1Xarm_msgsClearErrResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/ClearErrResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsClearErrResponse :: proc(v: ^Ros1Xarm_msgsClearErrResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/ClearErrResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsClearErrResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsClearErrResponse,bool) {
 v:=init_Ros1Xarm_msgsClearErrResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/ClearErrResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsClearErrResponse :: proc(v: ^Ros1Xarm_msgsClearErrResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsClearErrResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsClearErrResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/ClearErrResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsClearErrResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsClearErrResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsClearErrResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsClearErrResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsClearErrResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/ConfigToolModbusRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8
// bytes and is identified by UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsConfigToolModbusRequest :: struct {
 // @brief xarm_msgs/ConfigToolModbusRequest.baud_rate: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
 field_baud_rate: i32,
 // @brief xarm_msgs/ConfigToolModbusRequest.timeout_ms: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
 field_timeout_ms: i32,
}
// @brief Maximum canonical extent of xarm_msgs/ConfigToolModbusRequest in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsConfigToolModbusRequest_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of xarm_msgs/ConfigToolModbusRequest.
// @details Exact identity UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsConfigToolModbusRequest_Codec_Identity :: "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5"
// @brief Original ROS type name for xarm_msgs/ConfigToolModbusRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsConfigToolModbusRequest_Native_Type :: "xarm_msgs/ConfigToolModbusRequest"
// @brief Selected original native identity for xarm_msgs/ConfigToolModbusRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsConfigToolModbusRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/ConfigToolModbusRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsConfigToolModbusRequest :: proc() -> Ros1Xarm_msgsConfigToolModbusRequest {
 v: Ros1Xarm_msgsConfigToolModbusRequest
 v.field_baud_rate = 0
 v.field_timeout_ms = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/ConfigToolModbusRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsConfigToolModbusRequest :: proc(v: ^Ros1Xarm_msgsConfigToolModbusRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_baud_rate),4) { return false }
 if !put_integer(w,u64(v.field_timeout_ms),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/ConfigToolModbusRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsConfigToolModbusRequest :: proc(v: ^Ros1Xarm_msgsConfigToolModbusRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Xarm_msgsConfigToolModbusRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Xarm_msgsConfigToolModbusRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/ConfigToolModbusRequest value.
// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsConfigToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsConfigToolModbusRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsConfigToolModbusRequest,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Xarm_msgsConfigToolModbusRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsConfigToolModbusRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsConfigToolModbusRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/ConfigToolModbusResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsConfigToolModbusResponse :: struct {
 // @brief xarm_msgs/ConfigToolModbusResponse.message: string; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
 // @brief xarm_msgs/ConfigToolModbusResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
}
// @brief Maximum canonical extent of xarm_msgs/ConfigToolModbusResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsConfigToolModbusResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/ConfigToolModbusResponse.
// @details Exact identity UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsConfigToolModbusResponse_Codec_Identity :: "UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9"
// @brief Original ROS type name for xarm_msgs/ConfigToolModbusResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsConfigToolModbusResponse_Native_Type :: "xarm_msgs/ConfigToolModbusResponse"
// @brief Selected original native identity for xarm_msgs/ConfigToolModbusResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsConfigToolModbusResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/ConfigToolModbusResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsConfigToolModbusResponse :: proc() -> Ros1Xarm_msgsConfigToolModbusResponse {
 v: Ros1Xarm_msgsConfigToolModbusResponse
 v.field_message = ""
 v.field_ret = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/ConfigToolModbusResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsConfigToolModbusResponse :: proc(v: ^Ros1Xarm_msgsConfigToolModbusResponse, w: ^Writer) -> bool {
 if !put_string(w,v.field_message,256) { return false }
 if !put_integer(w,u64(v.field_ret),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/ConfigToolModbusResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsConfigToolModbusResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsConfigToolModbusResponse,bool) {
 v:=init_Ros1Xarm_msgsConfigToolModbusResponse()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/ConfigToolModbusResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsConfigToolModbusResponse :: proc(v: ^Ros1Xarm_msgsConfigToolModbusResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsConfigToolModbusResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsConfigToolModbusResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/ConfigToolModbusResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsConfigToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsConfigToolModbusResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsConfigToolModbusResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsConfigToolModbusResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsConfigToolModbusResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsConfigToolModbusResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/FtCaliLoadRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 5..133 bytes and is identified by
// UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtCaliLoadRequest :: struct {
 // @brief xarm_msgs/FtCaliLoadRequest.datas: float32; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/odin/API-CONTRACT.md
 field_datas: []f32,
 // @brief xarm_msgs/FtCaliLoadRequest.association_setting_tcp_load: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/odin/API-CONTRACT.md
 field_association_setting_tcp_load: bool,
}
// @brief Maximum canonical extent of xarm_msgs/FtCaliLoadRequest in bytes.
// @details The inclusive bound is 133 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtCaliLoadRequest_Maximum_Wire_Bytes :: 133
// @brief Canonical codec identity of xarm_msgs/FtCaliLoadRequest.
// @details Exact identity UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtCaliLoadRequest_Codec_Identity :: "UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167"
// @brief Original ROS type name for xarm_msgs/FtCaliLoadRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtCaliLoadRequest_Native_Type :: "xarm_msgs/FtCaliLoadRequest"
// @brief Selected original native identity for xarm_msgs/FtCaliLoadRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtCaliLoadRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/FtCaliLoadRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsFtCaliLoadRequest :: proc() -> Ros1Xarm_msgsFtCaliLoadRequest {
 v: Ros1Xarm_msgsFtCaliLoadRequest
 v.field_datas = nil
 v.field_association_setting_tcp_load = false
 return v
}
// @brief Append every canonical field of xarm_msgs/FtCaliLoadRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsFtCaliLoadRequest :: proc(v: ^Ros1Xarm_msgsFtCaliLoadRequest, w: ^Writer) -> bool {
 if len(v.field_datas)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_datas)),4) { return false }
 for e in v.field_datas {
 if !put_float32(w,e) { return false }
 }
 if !put_bool(w,v.field_association_setting_tcp_load) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/FtCaliLoadRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsFtCaliLoadRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsFtCaliLoadRequest,bool) {
 v:=init_Ros1Xarm_msgsFtCaliLoadRequest()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_datas=make([]f32,int(n),allocator)
 }
 for &e in v.field_datas {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_association_setting_tcp_load=bool(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/FtCaliLoadRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsFtCaliLoadRequest :: proc(v: ^Ros1Xarm_msgsFtCaliLoadRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=133}
 if !write_Ros1Xarm_msgsFtCaliLoadRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=133}
 if !write_Ros1Xarm_msgsFtCaliLoadRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/FtCaliLoadRequest value.
// @details Require the complete 5..133-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtCaliLoadRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsFtCaliLoadRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsFtCaliLoadRequest,u32) {
 if len(bytes)<5 || len(bytes)>133 { return Ros1Xarm_msgsFtCaliLoadRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsFtCaliLoadRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsFtCaliLoadRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/FtCaliLoadResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtCaliLoadResponse :: struct {
 // @brief xarm_msgs/FtCaliLoadResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/FtCaliLoadResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/FtCaliLoadResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtCaliLoadResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/FtCaliLoadResponse.
// @details Exact identity UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtCaliLoadResponse_Codec_Identity :: "UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7"
// @brief Original ROS type name for xarm_msgs/FtCaliLoadResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtCaliLoadResponse_Native_Type :: "xarm_msgs/FtCaliLoadResponse"
// @brief Selected original native identity for xarm_msgs/FtCaliLoadResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtCaliLoadResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/FtCaliLoadResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsFtCaliLoadResponse :: proc() -> Ros1Xarm_msgsFtCaliLoadResponse {
 v: Ros1Xarm_msgsFtCaliLoadResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/FtCaliLoadResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsFtCaliLoadResponse :: proc(v: ^Ros1Xarm_msgsFtCaliLoadResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/FtCaliLoadResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsFtCaliLoadResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsFtCaliLoadResponse,bool) {
 v:=init_Ros1Xarm_msgsFtCaliLoadResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/FtCaliLoadResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsFtCaliLoadResponse :: proc(v: ^Ros1Xarm_msgsFtCaliLoadResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsFtCaliLoadResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsFtCaliLoadResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/FtCaliLoadResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtCaliLoadResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsFtCaliLoadResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsFtCaliLoadResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsFtCaliLoadResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsFtCaliLoadResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsFtCaliLoadResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/FtIdenLoadRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtIdenLoadRequest :: struct {
}
// @brief Maximum canonical extent of xarm_msgs/FtIdenLoadRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtIdenLoadRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of xarm_msgs/FtIdenLoadRequest.
// @details Exact identity UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtIdenLoadRequest_Codec_Identity :: "UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c"
// @brief Original ROS type name for xarm_msgs/FtIdenLoadRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtIdenLoadRequest_Native_Type :: "xarm_msgs/FtIdenLoadRequest"
// @brief Selected original native identity for xarm_msgs/FtIdenLoadRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtIdenLoadRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/FtIdenLoadRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsFtIdenLoadRequest :: proc() -> Ros1Xarm_msgsFtIdenLoadRequest {
 v: Ros1Xarm_msgsFtIdenLoadRequest
 return v
}
// @brief Append every canonical field of xarm_msgs/FtIdenLoadRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsFtIdenLoadRequest :: proc(v: ^Ros1Xarm_msgsFtIdenLoadRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/FtIdenLoadRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsFtIdenLoadRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsFtIdenLoadRequest,bool) {
 v:=init_Ros1Xarm_msgsFtIdenLoadRequest()
 return v,true
}
// @brief Encode one complete xarm_msgs/FtIdenLoadRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsFtIdenLoadRequest :: proc(v: ^Ros1Xarm_msgsFtIdenLoadRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Xarm_msgsFtIdenLoadRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Xarm_msgsFtIdenLoadRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/FtIdenLoadRequest value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtIdenLoadRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsFtIdenLoadRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsFtIdenLoadRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Xarm_msgsFtIdenLoadRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsFtIdenLoadRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsFtIdenLoadRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/FtIdenLoadResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies
// 10..394 bytes and is identified by
// UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtIdenLoadResponse :: struct {
 // @brief xarm_msgs/FtIdenLoadResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/FtIdenLoadResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
 // @brief xarm_msgs/FtIdenLoadResponse.datas: float32; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/odin/API-CONTRACT.md
 field_datas: []f32,
}
// @brief Maximum canonical extent of xarm_msgs/FtIdenLoadResponse in bytes.
// @details The inclusive bound is 394 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtIdenLoadResponse_Maximum_Wire_Bytes :: 394
// @brief Canonical codec identity of xarm_msgs/FtIdenLoadResponse.
// @details Exact identity UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtIdenLoadResponse_Codec_Identity :: "UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8"
// @brief Original ROS type name for xarm_msgs/FtIdenLoadResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtIdenLoadResponse_Native_Type :: "xarm_msgs/FtIdenLoadResponse"
// @brief Selected original native identity for xarm_msgs/FtIdenLoadResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsFtIdenLoadResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/FtIdenLoadResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsFtIdenLoadResponse :: proc() -> Ros1Xarm_msgsFtIdenLoadResponse {
 v: Ros1Xarm_msgsFtIdenLoadResponse
 v.field_ret = 0
 v.field_message = ""
 v.field_datas = nil
 return v
}
// @brief Append every canonical field of xarm_msgs/FtIdenLoadResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsFtIdenLoadResponse :: proc(v: ^Ros1Xarm_msgsFtIdenLoadResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 if len(v.field_datas)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_datas)),4) { return false }
 for e in v.field_datas {
 if !put_float32(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/FtIdenLoadResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsFtIdenLoadResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsFtIdenLoadResponse,bool) {
 v:=init_Ros1Xarm_msgsFtIdenLoadResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_datas=make([]f32,int(n),allocator)
 }
 for &e in v.field_datas {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/FtIdenLoadResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsFtIdenLoadResponse :: proc(v: ^Ros1Xarm_msgsFtIdenLoadResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=394}
 if !write_Ros1Xarm_msgsFtIdenLoadResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=394}
 if !write_Ros1Xarm_msgsFtIdenLoadResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/FtIdenLoadResponse value.
// @details Require the complete 10..394-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsFtIdenLoadResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsFtIdenLoadResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsFtIdenLoadResponse,u32) {
 if len(bytes)<10 || len(bytes)>394 { return Ros1Xarm_msgsFtIdenLoadResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsFtIdenLoadResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsFtIdenLoadResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetAnalogIORequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 2..2
// bytes and is identified by UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetAnalogIORequest :: struct {
 // @brief xarm_msgs/GetAnalogIORequest.port_num: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
 field_port_num: i16,
}
// @brief Maximum canonical extent of xarm_msgs/GetAnalogIORequest in bytes.
// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetAnalogIORequest_Maximum_Wire_Bytes :: 2
// @brief Canonical codec identity of xarm_msgs/GetAnalogIORequest.
// @details Exact identity UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetAnalogIORequest_Codec_Identity :: "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8"
// @brief Original ROS type name for xarm_msgs/GetAnalogIORequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetAnalogIORequest_Native_Type :: "xarm_msgs/GetAnalogIORequest"
// @brief Selected original native identity for xarm_msgs/GetAnalogIORequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetAnalogIORequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetAnalogIORequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGetAnalogIORequest :: proc() -> Ros1Xarm_msgsGetAnalogIORequest {
 v: Ros1Xarm_msgsGetAnalogIORequest
 v.field_port_num = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/GetAnalogIORequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGetAnalogIORequest :: proc(v: ^Ros1Xarm_msgsGetAnalogIORequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_port_num),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetAnalogIORequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGetAnalogIORequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetAnalogIORequest,bool) {
 v:=init_Ros1Xarm_msgsGetAnalogIORequest()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_port_num=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetAnalogIORequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGetAnalogIORequest :: proc(v: ^Ros1Xarm_msgsGetAnalogIORequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2}
 if !write_Ros1Xarm_msgsGetAnalogIORequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2}
 if !write_Ros1Xarm_msgsGetAnalogIORequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetAnalogIORequest value.
// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGetAnalogIORequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetAnalogIORequest,u32) {
 if len(bytes)<2 || len(bytes)>2 { return Ros1Xarm_msgsGetAnalogIORequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetAnalogIORequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetAnalogIORequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetAnalogIOResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies
// 10..266 bytes and is identified by
// UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetAnalogIOResponse :: struct {
 // @brief xarm_msgs/GetAnalogIOResponse.analog_value: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_analog_value: f32,
 // @brief xarm_msgs/GetAnalogIOResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/GetAnalogIOResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/GetAnalogIOResponse in bytes.
// @details The inclusive bound is 266 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetAnalogIOResponse_Maximum_Wire_Bytes :: 266
// @brief Canonical codec identity of xarm_msgs/GetAnalogIOResponse.
// @details Exact identity UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetAnalogIOResponse_Codec_Identity :: "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835"
// @brief Original ROS type name for xarm_msgs/GetAnalogIOResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetAnalogIOResponse_Native_Type :: "xarm_msgs/GetAnalogIOResponse"
// @brief Selected original native identity for xarm_msgs/GetAnalogIOResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetAnalogIOResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetAnalogIOResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGetAnalogIOResponse :: proc() -> Ros1Xarm_msgsGetAnalogIOResponse {
 v: Ros1Xarm_msgsGetAnalogIOResponse
 v.field_analog_value = 0
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/GetAnalogIOResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGetAnalogIOResponse :: proc(v: ^Ros1Xarm_msgsGetAnalogIOResponse, w: ^Writer) -> bool {
 if !put_float32(w,v.field_analog_value) { return false }
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetAnalogIOResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
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
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetAnalogIOResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGetAnalogIOResponse :: proc(v: ^Ros1Xarm_msgsGetAnalogIOResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=266}
 if !write_Ros1Xarm_msgsGetAnalogIOResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=266}
 if !write_Ros1Xarm_msgsGetAnalogIOResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetAnalogIOResponse value.
// @details Require the complete 10..266-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGetAnalogIOResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetAnalogIOResponse,u32) {
 if len(bytes)<10 || len(bytes)>266 { return Ros1Xarm_msgsGetAnalogIOResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetAnalogIOResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetAnalogIOResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetControllerDigitalIORequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 2..2
// bytes and is identified by UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetControllerDigitalIORequest :: struct {
 // @brief xarm_msgs/GetControllerDigitalIORequest.io_num: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
 field_io_num: i16,
}
// @brief Maximum canonical extent of xarm_msgs/GetControllerDigitalIORequest in bytes.
// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetControllerDigitalIORequest_Maximum_Wire_Bytes :: 2
// @brief Canonical codec identity of xarm_msgs/GetControllerDigitalIORequest.
// @details Exact identity UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetControllerDigitalIORequest_Codec_Identity :: "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c"
// @brief Original ROS type name for xarm_msgs/GetControllerDigitalIORequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetControllerDigitalIORequest_Native_Type :: "xarm_msgs/GetControllerDigitalIORequest"
// @brief Selected original native identity for xarm_msgs/GetControllerDigitalIORequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetControllerDigitalIORequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetControllerDigitalIORequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGetControllerDigitalIORequest :: proc() -> Ros1Xarm_msgsGetControllerDigitalIORequest {
 v: Ros1Xarm_msgsGetControllerDigitalIORequest
 v.field_io_num = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/GetControllerDigitalIORequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGetControllerDigitalIORequest :: proc(v: ^Ros1Xarm_msgsGetControllerDigitalIORequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_io_num),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetControllerDigitalIORequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGetControllerDigitalIORequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetControllerDigitalIORequest,bool) {
 v:=init_Ros1Xarm_msgsGetControllerDigitalIORequest()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_io_num=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetControllerDigitalIORequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGetControllerDigitalIORequest :: proc(v: ^Ros1Xarm_msgsGetControllerDigitalIORequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2}
 if !write_Ros1Xarm_msgsGetControllerDigitalIORequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2}
 if !write_Ros1Xarm_msgsGetControllerDigitalIORequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetControllerDigitalIORequest value.
// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetControllerDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGetControllerDigitalIORequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetControllerDigitalIORequest,u32) {
 if len(bytes)<2 || len(bytes)>2 { return Ros1Xarm_msgsGetControllerDigitalIORequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetControllerDigitalIORequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetControllerDigitalIORequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetControllerDigitalIOResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies
// 8..264 bytes and is identified by
// UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetControllerDigitalIOResponse :: struct {
 // @brief xarm_msgs/GetControllerDigitalIOResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/GetControllerDigitalIOResponse.value: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_value: i16,
 // @brief xarm_msgs/GetControllerDigitalIOResponse.message: string; each string is 0..256 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/GetControllerDigitalIOResponse in bytes.
// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetControllerDigitalIOResponse_Maximum_Wire_Bytes :: 264
// @brief Canonical codec identity of xarm_msgs/GetControllerDigitalIOResponse.
// @details Exact identity UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetControllerDigitalIOResponse_Codec_Identity :: "UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161"
// @brief Original ROS type name for xarm_msgs/GetControllerDigitalIOResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetControllerDigitalIOResponse_Native_Type :: "xarm_msgs/GetControllerDigitalIOResponse"
// @brief Selected original native identity for xarm_msgs/GetControllerDigitalIOResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetControllerDigitalIOResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetControllerDigitalIOResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGetControllerDigitalIOResponse :: proc() -> Ros1Xarm_msgsGetControllerDigitalIOResponse {
 v: Ros1Xarm_msgsGetControllerDigitalIOResponse
 v.field_ret = 0
 v.field_value = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/GetControllerDigitalIOResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGetControllerDigitalIOResponse :: proc(v: ^Ros1Xarm_msgsGetControllerDigitalIOResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_integer(w,u64(v.field_value),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetControllerDigitalIOResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
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
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetControllerDigitalIOResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGetControllerDigitalIOResponse :: proc(v: ^Ros1Xarm_msgsGetControllerDigitalIOResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=264}
 if !write_Ros1Xarm_msgsGetControllerDigitalIOResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=264}
 if !write_Ros1Xarm_msgsGetControllerDigitalIOResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetControllerDigitalIOResponse value.
// @details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetControllerDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGetControllerDigitalIOResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetControllerDigitalIOResponse,u32) {
 if len(bytes)<8 || len(bytes)>264 { return Ros1Xarm_msgsGetControllerDigitalIOResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetControllerDigitalIOResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetControllerDigitalIOResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetDigitalIORequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetDigitalIORequest :: struct {
}
// @brief Maximum canonical extent of xarm_msgs/GetDigitalIORequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetDigitalIORequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of xarm_msgs/GetDigitalIORequest.
// @details Exact identity UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetDigitalIORequest_Codec_Identity :: "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da"
// @brief Original ROS type name for xarm_msgs/GetDigitalIORequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetDigitalIORequest_Native_Type :: "xarm_msgs/GetDigitalIORequest"
// @brief Selected original native identity for xarm_msgs/GetDigitalIORequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetDigitalIORequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetDigitalIORequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGetDigitalIORequest :: proc() -> Ros1Xarm_msgsGetDigitalIORequest {
 v: Ros1Xarm_msgsGetDigitalIORequest
 return v
}
// @brief Append every canonical field of xarm_msgs/GetDigitalIORequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGetDigitalIORequest :: proc(v: ^Ros1Xarm_msgsGetDigitalIORequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetDigitalIORequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGetDigitalIORequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetDigitalIORequest,bool) {
 v:=init_Ros1Xarm_msgsGetDigitalIORequest()
 return v,true
}
// @brief Encode one complete xarm_msgs/GetDigitalIORequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGetDigitalIORequest :: proc(v: ^Ros1Xarm_msgsGetDigitalIORequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Xarm_msgsGetDigitalIORequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Xarm_msgsGetDigitalIORequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetDigitalIORequest value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGetDigitalIORequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetDigitalIORequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Xarm_msgsGetDigitalIORequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetDigitalIORequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetDigitalIORequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetDigitalIOResponse value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 14..270 bytes and is identified by
// UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetDigitalIOResponse :: struct {
 // @brief xarm_msgs/GetDigitalIOResponse.digital_1: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_digital_1: i32,
 // @brief xarm_msgs/GetDigitalIOResponse.digital_2: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_digital_2: i32,
 // @brief xarm_msgs/GetDigitalIOResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/GetDigitalIOResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/GetDigitalIOResponse in bytes.
// @details The inclusive bound is 270 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetDigitalIOResponse_Maximum_Wire_Bytes :: 270
// @brief Canonical codec identity of xarm_msgs/GetDigitalIOResponse.
// @details Exact identity UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetDigitalIOResponse_Codec_Identity :: "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498"
// @brief Original ROS type name for xarm_msgs/GetDigitalIOResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetDigitalIOResponse_Native_Type :: "xarm_msgs/GetDigitalIOResponse"
// @brief Selected original native identity for xarm_msgs/GetDigitalIOResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetDigitalIOResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetDigitalIOResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGetDigitalIOResponse :: proc() -> Ros1Xarm_msgsGetDigitalIOResponse {
 v: Ros1Xarm_msgsGetDigitalIOResponse
 v.field_digital_1 = 0
 v.field_digital_2 = 0
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/GetDigitalIOResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGetDigitalIOResponse :: proc(v: ^Ros1Xarm_msgsGetDigitalIOResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_digital_1),4) { return false }
 if !put_integer(w,u64(v.field_digital_2),4) { return false }
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetDigitalIOResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
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
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetDigitalIOResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGetDigitalIOResponse :: proc(v: ^Ros1Xarm_msgsGetDigitalIOResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=270}
 if !write_Ros1Xarm_msgsGetDigitalIOResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=270}
 if !write_Ros1Xarm_msgsGetDigitalIOResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetDigitalIOResponse value.
// @details Require the complete 14..270-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGetDigitalIOResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetDigitalIOResponse,u32) {
 if len(bytes)<14 || len(bytes)>270 { return Ros1Xarm_msgsGetDigitalIOResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetDigitalIOResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetDigitalIOResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetErrRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetErrRequest :: struct {
}
// @brief Maximum canonical extent of xarm_msgs/GetErrRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetErrRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of xarm_msgs/GetErrRequest.
// @details Exact identity UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetErrRequest_Codec_Identity :: "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531"
// @brief Original ROS type name for xarm_msgs/GetErrRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetErrRequest_Native_Type :: "xarm_msgs/GetErrRequest"
// @brief Selected original native identity for xarm_msgs/GetErrRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetErrRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetErrRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGetErrRequest :: proc() -> Ros1Xarm_msgsGetErrRequest {
 v: Ros1Xarm_msgsGetErrRequest
 return v
}
// @brief Append every canonical field of xarm_msgs/GetErrRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGetErrRequest :: proc(v: ^Ros1Xarm_msgsGetErrRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetErrRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGetErrRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetErrRequest,bool) {
 v:=init_Ros1Xarm_msgsGetErrRequest()
 return v,true
}
// @brief Encode one complete xarm_msgs/GetErrRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGetErrRequest :: proc(v: ^Ros1Xarm_msgsGetErrRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Xarm_msgsGetErrRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Xarm_msgsGetErrRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetErrRequest value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetErrRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGetErrRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetErrRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Xarm_msgsGetErrRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetErrRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetErrRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetErrResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies
// 8..264 bytes and is identified by
// UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetErrResponse :: struct {
 // @brief xarm_msgs/GetErrResponse.err: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/odin/API-CONTRACT.md
 field_err: i16,
 // @brief xarm_msgs/GetErrResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/GetErrResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/GetErrResponse in bytes.
// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetErrResponse_Maximum_Wire_Bytes :: 264
// @brief Canonical codec identity of xarm_msgs/GetErrResponse.
// @details Exact identity UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetErrResponse_Codec_Identity :: "UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de"
// @brief Original ROS type name for xarm_msgs/GetErrResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetErrResponse_Native_Type :: "xarm_msgs/GetErrResponse"
// @brief Selected original native identity for xarm_msgs/GetErrResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetErrResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetErrResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGetErrResponse :: proc() -> Ros1Xarm_msgsGetErrResponse {
 v: Ros1Xarm_msgsGetErrResponse
 v.field_err = 0
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/GetErrResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGetErrResponse :: proc(v: ^Ros1Xarm_msgsGetErrResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_err),2) { return false }
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetErrResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGetErrResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetErrResponse,bool) {
 v:=init_Ros1Xarm_msgsGetErrResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_err=i16(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetErrResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGetErrResponse :: proc(v: ^Ros1Xarm_msgsGetErrResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=264}
 if !write_Ros1Xarm_msgsGetErrResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=264}
 if !write_Ros1Xarm_msgsGetErrResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetErrResponse value.
// @details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetErrResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGetErrResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetErrResponse,u32) {
 if len(bytes)<8 || len(bytes)>264 { return Ros1Xarm_msgsGetErrResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetErrResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetErrResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetFloat32ListRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetFloat32ListRequest :: struct {
}
// @brief Maximum canonical extent of xarm_msgs/GetFloat32ListRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetFloat32ListRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of xarm_msgs/GetFloat32ListRequest.
// @details Exact identity UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetFloat32ListRequest_Codec_Identity :: "UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db"
// @brief Original ROS type name for xarm_msgs/GetFloat32ListRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetFloat32ListRequest_Native_Type :: "xarm_msgs/GetFloat32ListRequest"
// @brief Selected original native identity for xarm_msgs/GetFloat32ListRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetFloat32ListRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetFloat32ListRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGetFloat32ListRequest :: proc() -> Ros1Xarm_msgsGetFloat32ListRequest {
 v: Ros1Xarm_msgsGetFloat32ListRequest
 return v
}
// @brief Append every canonical field of xarm_msgs/GetFloat32ListRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGetFloat32ListRequest :: proc(v: ^Ros1Xarm_msgsGetFloat32ListRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetFloat32ListRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGetFloat32ListRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetFloat32ListRequest,bool) {
 v:=init_Ros1Xarm_msgsGetFloat32ListRequest()
 return v,true
}
// @brief Encode one complete xarm_msgs/GetFloat32ListRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGetFloat32ListRequest :: proc(v: ^Ros1Xarm_msgsGetFloat32ListRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Xarm_msgsGetFloat32ListRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Xarm_msgsGetFloat32ListRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetFloat32ListRequest value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetFloat32ListRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGetFloat32ListRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetFloat32ListRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Xarm_msgsGetFloat32ListRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetFloat32ListRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetFloat32ListRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetFloat32ListResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies
// 10..394 bytes and is identified by
// UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetFloat32ListResponse :: struct {
 // @brief xarm_msgs/GetFloat32ListResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/GetFloat32ListResponse.message: string; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
 // @brief xarm_msgs/GetFloat32ListResponse.datas: float32; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/odin/API-CONTRACT.md
 field_datas: []f32,
}
// @brief Maximum canonical extent of xarm_msgs/GetFloat32ListResponse in bytes.
// @details The inclusive bound is 394 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetFloat32ListResponse_Maximum_Wire_Bytes :: 394
// @brief Canonical codec identity of xarm_msgs/GetFloat32ListResponse.
// @details Exact identity UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetFloat32ListResponse_Codec_Identity :: "UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2"
// @brief Original ROS type name for xarm_msgs/GetFloat32ListResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetFloat32ListResponse_Native_Type :: "xarm_msgs/GetFloat32ListResponse"
// @brief Selected original native identity for xarm_msgs/GetFloat32ListResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetFloat32ListResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetFloat32ListResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGetFloat32ListResponse :: proc() -> Ros1Xarm_msgsGetFloat32ListResponse {
 v: Ros1Xarm_msgsGetFloat32ListResponse
 v.field_ret = 0
 v.field_message = ""
 v.field_datas = nil
 return v
}
// @brief Append every canonical field of xarm_msgs/GetFloat32ListResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGetFloat32ListResponse :: proc(v: ^Ros1Xarm_msgsGetFloat32ListResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 if len(v.field_datas)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_datas)),4) { return false }
 for e in v.field_datas {
 if !put_float32(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetFloat32ListResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGetFloat32ListResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetFloat32ListResponse,bool) {
 v:=init_Ros1Xarm_msgsGetFloat32ListResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_datas=make([]f32,int(n),allocator)
 }
 for &e in v.field_datas {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetFloat32ListResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGetFloat32ListResponse :: proc(v: ^Ros1Xarm_msgsGetFloat32ListResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=394}
 if !write_Ros1Xarm_msgsGetFloat32ListResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=394}
 if !write_Ros1Xarm_msgsGetFloat32ListResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetFloat32ListResponse value.
// @details Require the complete 10..394-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetFloat32ListResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGetFloat32ListResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetFloat32ListResponse,u32) {
 if len(bytes)<10 || len(bytes)>394 { return Ros1Xarm_msgsGetFloat32ListResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetFloat32ListResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetFloat32ListResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetInt32Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetInt32Request :: struct {
}
// @brief Maximum canonical extent of xarm_msgs/GetInt32Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetInt32Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of xarm_msgs/GetInt32Request.
// @details Exact identity UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetInt32Request_Codec_Identity :: "UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470"
// @brief Original ROS type name for xarm_msgs/GetInt32Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetInt32Request_Native_Type :: "xarm_msgs/GetInt32Request"
// @brief Selected original native identity for xarm_msgs/GetInt32Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetInt32Request_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetInt32Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGetInt32Request :: proc() -> Ros1Xarm_msgsGetInt32Request {
 v: Ros1Xarm_msgsGetInt32Request
 return v
}
// @brief Append every canonical field of xarm_msgs/GetInt32Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGetInt32Request :: proc(v: ^Ros1Xarm_msgsGetInt32Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetInt32Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGetInt32Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetInt32Request,bool) {
 v:=init_Ros1Xarm_msgsGetInt32Request()
 return v,true
}
// @brief Encode one complete xarm_msgs/GetInt32Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGetInt32Request :: proc(v: ^Ros1Xarm_msgsGetInt32Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Xarm_msgsGetInt32Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Xarm_msgsGetInt32Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetInt32Request value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetInt32Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGetInt32Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetInt32Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Xarm_msgsGetInt32Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetInt32Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetInt32Request{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetInt32Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies
// 10..266 bytes and is identified by
// UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetInt32Response :: struct {
 // @brief xarm_msgs/GetInt32Response.data: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/odin/API-CONTRACT.md
 field_data: i32,
 // @brief xarm_msgs/GetInt32Response.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/GetInt32Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/GetInt32Response in bytes.
// @details The inclusive bound is 266 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetInt32Response_Maximum_Wire_Bytes :: 266
// @brief Canonical codec identity of xarm_msgs/GetInt32Response.
// @details Exact identity UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetInt32Response_Codec_Identity :: "UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d"
// @brief Original ROS type name for xarm_msgs/GetInt32Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetInt32Response_Native_Type :: "xarm_msgs/GetInt32Response"
// @brief Selected original native identity for xarm_msgs/GetInt32Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetInt32Response_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetInt32Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGetInt32Response :: proc() -> Ros1Xarm_msgsGetInt32Response {
 v: Ros1Xarm_msgsGetInt32Response
 v.field_data = 0
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/GetInt32Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGetInt32Response :: proc(v: ^Ros1Xarm_msgsGetInt32Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_data),4) { return false }
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetInt32Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGetInt32Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetInt32Response,bool) {
 v:=init_Ros1Xarm_msgsGetInt32Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_data=i32(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetInt32Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGetInt32Response :: proc(v: ^Ros1Xarm_msgsGetInt32Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=266}
 if !write_Ros1Xarm_msgsGetInt32Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=266}
 if !write_Ros1Xarm_msgsGetInt32Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetInt32Response value.
// @details Require the complete 10..266-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetInt32Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGetInt32Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetInt32Response,u32) {
 if len(bytes)<10 || len(bytes)>266 { return Ros1Xarm_msgsGetInt32Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetInt32Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetInt32Response{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetSetModbusDataRequest value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies
// 9..4105 bytes and is identified by
// UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetSetModbusDataRequest :: struct {
 // @brief xarm_msgs/GetSetModbusDataRequest.send_data: uint8; 0..4096 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/odin/API-CONTRACT.md
 field_send_data: []u8,
 // @brief xarm_msgs/GetSetModbusDataRequest.respond_len: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/odin/API-CONTRACT.md
 field_respond_len: i16,
 // @brief xarm_msgs/GetSetModbusDataRequest.host_id: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/odin/API-CONTRACT.md
 field_host_id: u8,
 // @brief xarm_msgs/GetSetModbusDataRequest.is_transparent_transmission: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/odin/API-CONTRACT.md
 field_is_transparent_transmission: bool,
 // @brief xarm_msgs/GetSetModbusDataRequest.use_503_port: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/odin/API-CONTRACT.md
 field_use_503_port: bool,
}
// @brief Maximum canonical extent of xarm_msgs/GetSetModbusDataRequest in bytes.
// @details The inclusive bound is 4105 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetSetModbusDataRequest_Maximum_Wire_Bytes :: 4105
// @brief Canonical codec identity of xarm_msgs/GetSetModbusDataRequest.
// @details Exact identity UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetSetModbusDataRequest_Codec_Identity :: "UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7"
// @brief Original ROS type name for xarm_msgs/GetSetModbusDataRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetSetModbusDataRequest_Native_Type :: "xarm_msgs/GetSetModbusDataRequest"
// @brief Selected original native identity for xarm_msgs/GetSetModbusDataRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetSetModbusDataRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetSetModbusDataRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGetSetModbusDataRequest :: proc() -> Ros1Xarm_msgsGetSetModbusDataRequest {
 v: Ros1Xarm_msgsGetSetModbusDataRequest
 v.field_send_data = nil
 v.field_respond_len = 0
 v.field_host_id = 0
 v.field_is_transparent_transmission = false
 v.field_use_503_port = false
 return v
}
// @brief Append every canonical field of xarm_msgs/GetSetModbusDataRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGetSetModbusDataRequest :: proc(v: ^Ros1Xarm_msgsGetSetModbusDataRequest, w: ^Writer) -> bool {
 if len(v.field_send_data)>4096 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_send_data)),4) { return false }
 for e in v.field_send_data {
 if !put_integer(w,u64(e),1) { return false }
 }
 if !put_integer(w,u64(v.field_respond_len),2) { return false }
 if !put_integer(w,u64(v.field_host_id),1) { return false }
 if !put_bool(w,v.field_is_transparent_transmission) { return false }
 if !put_bool(w,v.field_use_503_port) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetSetModbusDataRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGetSetModbusDataRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetSetModbusDataRequest,bool) {
 v:=init_Ros1Xarm_msgsGetSetModbusDataRequest()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4096 { r.code=22; return v,false }
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
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_host_id=u8(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_transparent_transmission=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_use_503_port=bool(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GetSetModbusDataRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGetSetModbusDataRequest :: proc(v: ^Ros1Xarm_msgsGetSetModbusDataRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4105}
 if !write_Ros1Xarm_msgsGetSetModbusDataRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4105}
 if !write_Ros1Xarm_msgsGetSetModbusDataRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetSetModbusDataRequest value.
// @details Require the complete 9..4105-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetSetModbusDataRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGetSetModbusDataRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetSetModbusDataRequest,u32) {
 if len(bytes)<9 || len(bytes)>4105 { return Ros1Xarm_msgsGetSetModbusDataRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetSetModbusDataRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetSetModbusDataRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GetSetModbusDataResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies
// 10..4362 bytes and is identified by
// UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetSetModbusDataResponse :: struct {
 // @brief xarm_msgs/GetSetModbusDataResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/GetSetModbusDataResponse.message: string; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
 // @brief xarm_msgs/GetSetModbusDataResponse.respond_data: uint8; 0..4096 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/odin/API-CONTRACT.md
 field_respond_data: []u8,
}
// @brief Maximum canonical extent of xarm_msgs/GetSetModbusDataResponse in bytes.
// @details The inclusive bound is 4362 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetSetModbusDataResponse_Maximum_Wire_Bytes :: 4362
// @brief Canonical codec identity of xarm_msgs/GetSetModbusDataResponse.
// @details Exact identity UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetSetModbusDataResponse_Codec_Identity :: "UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead"
// @brief Original ROS type name for xarm_msgs/GetSetModbusDataResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetSetModbusDataResponse_Native_Type :: "xarm_msgs/GetSetModbusDataResponse"
// @brief Selected original native identity for xarm_msgs/GetSetModbusDataResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGetSetModbusDataResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GetSetModbusDataResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGetSetModbusDataResponse :: proc() -> Ros1Xarm_msgsGetSetModbusDataResponse {
 v: Ros1Xarm_msgsGetSetModbusDataResponse
 v.field_ret = 0
 v.field_message = ""
 v.field_respond_data = nil
 return v
}
// @brief Append every canonical field of xarm_msgs/GetSetModbusDataResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGetSetModbusDataResponse :: proc(v: ^Ros1Xarm_msgsGetSetModbusDataResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 if len(v.field_respond_data)>4096 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_respond_data)),4) { return false }
 for e in v.field_respond_data {
 if !put_integer(w,u64(e),1) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GetSetModbusDataResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGetSetModbusDataResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetSetModbusDataResponse,bool) {
 v:=init_Ros1Xarm_msgsGetSetModbusDataResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4096 { r.code=22; return v,false }
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
// @brief Encode one complete xarm_msgs/GetSetModbusDataResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGetSetModbusDataResponse :: proc(v: ^Ros1Xarm_msgsGetSetModbusDataResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4362}
 if !write_Ros1Xarm_msgsGetSetModbusDataResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4362}
 if !write_Ros1Xarm_msgsGetSetModbusDataResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GetSetModbusDataResponse value.
// @details Require the complete 10..4362-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGetSetModbusDataResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGetSetModbusDataResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGetSetModbusDataResponse,u32) {
 if len(bytes)<10 || len(bytes)>4362 { return Ros1Xarm_msgsGetSetModbusDataResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGetSetModbusDataResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGetSetModbusDataResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GripperConfigRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4
// bytes and is identified by UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperConfigRequest :: struct {
 // @brief xarm_msgs/GripperConfigRequest.pulse_vel: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/odin/API-CONTRACT.md
 field_pulse_vel: f32,
}
// @brief Maximum canonical extent of xarm_msgs/GripperConfigRequest in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperConfigRequest_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of xarm_msgs/GripperConfigRequest.
// @details Exact identity UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperConfigRequest_Codec_Identity :: "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4"
// @brief Original ROS type name for xarm_msgs/GripperConfigRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperConfigRequest_Native_Type :: "xarm_msgs/GripperConfigRequest"
// @brief Selected original native identity for xarm_msgs/GripperConfigRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperConfigRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GripperConfigRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGripperConfigRequest :: proc() -> Ros1Xarm_msgsGripperConfigRequest {
 v: Ros1Xarm_msgsGripperConfigRequest
 v.field_pulse_vel = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/GripperConfigRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGripperConfigRequest :: proc(v: ^Ros1Xarm_msgsGripperConfigRequest, w: ^Writer) -> bool {
 if !put_float32(w,v.field_pulse_vel) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GripperConfigRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGripperConfigRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperConfigRequest,bool) {
 v:=init_Ros1Xarm_msgsGripperConfigRequest()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_pulse_vel=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GripperConfigRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGripperConfigRequest :: proc(v: ^Ros1Xarm_msgsGripperConfigRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros1Xarm_msgsGripperConfigRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros1Xarm_msgsGripperConfigRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GripperConfigRequest value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperConfigRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGripperConfigRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperConfigRequest,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros1Xarm_msgsGripperConfigRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGripperConfigRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGripperConfigRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GripperConfigResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperConfigResponse :: struct {
 // @brief xarm_msgs/GripperConfigResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/GripperConfigResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/GripperConfigResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperConfigResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/GripperConfigResponse.
// @details Exact identity UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperConfigResponse_Codec_Identity :: "UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59"
// @brief Original ROS type name for xarm_msgs/GripperConfigResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperConfigResponse_Native_Type :: "xarm_msgs/GripperConfigResponse"
// @brief Selected original native identity for xarm_msgs/GripperConfigResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperConfigResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GripperConfigResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGripperConfigResponse :: proc() -> Ros1Xarm_msgsGripperConfigResponse {
 v: Ros1Xarm_msgsGripperConfigResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/GripperConfigResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGripperConfigResponse :: proc(v: ^Ros1Xarm_msgsGripperConfigResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GripperConfigResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGripperConfigResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperConfigResponse,bool) {
 v:=init_Ros1Xarm_msgsGripperConfigResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GripperConfigResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGripperConfigResponse :: proc(v: ^Ros1Xarm_msgsGripperConfigResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsGripperConfigResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsGripperConfigResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GripperConfigResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperConfigResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGripperConfigResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperConfigResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsGripperConfigResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGripperConfigResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGripperConfigResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GripperMoveRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4
// bytes and is identified by UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperMoveRequest :: struct {
 // @brief xarm_msgs/GripperMoveRequest.pulse_pos: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/odin/API-CONTRACT.md
 field_pulse_pos: f32,
}
// @brief Maximum canonical extent of xarm_msgs/GripperMoveRequest in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperMoveRequest_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of xarm_msgs/GripperMoveRequest.
// @details Exact identity UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperMoveRequest_Codec_Identity :: "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2"
// @brief Original ROS type name for xarm_msgs/GripperMoveRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperMoveRequest_Native_Type :: "xarm_msgs/GripperMoveRequest"
// @brief Selected original native identity for xarm_msgs/GripperMoveRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperMoveRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GripperMoveRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGripperMoveRequest :: proc() -> Ros1Xarm_msgsGripperMoveRequest {
 v: Ros1Xarm_msgsGripperMoveRequest
 v.field_pulse_pos = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/GripperMoveRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGripperMoveRequest :: proc(v: ^Ros1Xarm_msgsGripperMoveRequest, w: ^Writer) -> bool {
 if !put_float32(w,v.field_pulse_pos) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GripperMoveRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGripperMoveRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperMoveRequest,bool) {
 v:=init_Ros1Xarm_msgsGripperMoveRequest()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_pulse_pos=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GripperMoveRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGripperMoveRequest :: proc(v: ^Ros1Xarm_msgsGripperMoveRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros1Xarm_msgsGripperMoveRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros1Xarm_msgsGripperMoveRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GripperMoveRequest value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperMoveRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGripperMoveRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperMoveRequest,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros1Xarm_msgsGripperMoveRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGripperMoveRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGripperMoveRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GripperMoveResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperMoveResponse :: struct {
 // @brief xarm_msgs/GripperMoveResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/GripperMoveResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/GripperMoveResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperMoveResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/GripperMoveResponse.
// @details Exact identity UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperMoveResponse_Codec_Identity :: "UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad"
// @brief Original ROS type name for xarm_msgs/GripperMoveResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperMoveResponse_Native_Type :: "xarm_msgs/GripperMoveResponse"
// @brief Selected original native identity for xarm_msgs/GripperMoveResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperMoveResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GripperMoveResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGripperMoveResponse :: proc() -> Ros1Xarm_msgsGripperMoveResponse {
 v: Ros1Xarm_msgsGripperMoveResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/GripperMoveResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGripperMoveResponse :: proc(v: ^Ros1Xarm_msgsGripperMoveResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GripperMoveResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGripperMoveResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperMoveResponse,bool) {
 v:=init_Ros1Xarm_msgsGripperMoveResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/GripperMoveResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGripperMoveResponse :: proc(v: ^Ros1Xarm_msgsGripperMoveResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsGripperMoveResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsGripperMoveResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GripperMoveResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperMoveResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGripperMoveResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperMoveResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsGripperMoveResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGripperMoveResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGripperMoveResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GripperStateRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperStateRequest :: struct {
}
// @brief Maximum canonical extent of xarm_msgs/GripperStateRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperStateRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of xarm_msgs/GripperStateRequest.
// @details Exact identity UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperStateRequest_Codec_Identity :: "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d"
// @brief Original ROS type name for xarm_msgs/GripperStateRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperStateRequest_Native_Type :: "xarm_msgs/GripperStateRequest"
// @brief Selected original native identity for xarm_msgs/GripperStateRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperStateRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GripperStateRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGripperStateRequest :: proc() -> Ros1Xarm_msgsGripperStateRequest {
 v: Ros1Xarm_msgsGripperStateRequest
 return v
}
// @brief Append every canonical field of xarm_msgs/GripperStateRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGripperStateRequest :: proc(v: ^Ros1Xarm_msgsGripperStateRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GripperStateRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGripperStateRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperStateRequest,bool) {
 v:=init_Ros1Xarm_msgsGripperStateRequest()
 return v,true
}
// @brief Encode one complete xarm_msgs/GripperStateRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGripperStateRequest :: proc(v: ^Ros1Xarm_msgsGripperStateRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Xarm_msgsGripperStateRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Xarm_msgsGripperStateRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GripperStateRequest value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperStateRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGripperStateRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperStateRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Xarm_msgsGripperStateRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGripperStateRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGripperStateRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/GripperStateResponse value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 12..268 bytes and is identified by
// UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperStateResponse :: struct {
 // @brief xarm_msgs/GripperStateResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/GripperStateResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
 // @brief xarm_msgs/GripperStateResponse.curr_pos: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_curr_pos: f32,
 // @brief xarm_msgs/GripperStateResponse.err_code: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_err_code: i16,
}
// @brief Maximum canonical extent of xarm_msgs/GripperStateResponse in bytes.
// @details The inclusive bound is 268 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperStateResponse_Maximum_Wire_Bytes :: 268
// @brief Canonical codec identity of xarm_msgs/GripperStateResponse.
// @details Exact identity UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperStateResponse_Codec_Identity :: "UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6"
// @brief Original ROS type name for xarm_msgs/GripperStateResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperStateResponse_Native_Type :: "xarm_msgs/GripperStateResponse"
// @brief Selected original native identity for xarm_msgs/GripperStateResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsGripperStateResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/GripperStateResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsGripperStateResponse :: proc() -> Ros1Xarm_msgsGripperStateResponse {
 v: Ros1Xarm_msgsGripperStateResponse
 v.field_ret = 0
 v.field_message = ""
 v.field_curr_pos = 0
 v.field_err_code = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/GripperStateResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsGripperStateResponse :: proc(v: ^Ros1Xarm_msgsGripperStateResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 if !put_float32(w,v.field_curr_pos) { return false }
 if !put_integer(w,u64(v.field_err_code),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/GripperStateResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsGripperStateResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperStateResponse,bool) {
 v:=init_Ros1Xarm_msgsGripperStateResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsGripperStateResponse :: proc(v: ^Ros1Xarm_msgsGripperStateResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=268}
 if !write_Ros1Xarm_msgsGripperStateResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=268}
 if !write_Ros1Xarm_msgsGripperStateResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/GripperStateResponse value.
// @details Require the complete 12..268-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsGripperStateResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsGripperStateResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsGripperStateResponse,u32) {
 if len(bytes)<12 || len(bytes)>268 { return Ros1Xarm_msgsGripperStateResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsGripperStateResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsGripperStateResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/MoveRequest value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies
// 20..148 bytes and is identified by
// UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveRequest :: struct {
 // @brief xarm_msgs/MoveRequest.pose: float32; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveRequest; share/platform/ros/odin/API-CONTRACT.md
 field_pose: []f32,
 // @brief xarm_msgs/MoveRequest.mvvelo: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveRequest; share/platform/ros/odin/API-CONTRACT.md
 field_mvvelo: f32,
 // @brief xarm_msgs/MoveRequest.mvacc: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveRequest; share/platform/ros/odin/API-CONTRACT.md
 field_mvacc: f32,
 // @brief xarm_msgs/MoveRequest.mvtime: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveRequest; share/platform/ros/odin/API-CONTRACT.md
 field_mvtime: f32,
 // @brief xarm_msgs/MoveRequest.mvradii: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveRequest; share/platform/ros/odin/API-CONTRACT.md
 field_mvradii: f32,
}
// @brief Maximum canonical extent of xarm_msgs/MoveRequest in bytes.
// @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveRequest_Maximum_Wire_Bytes :: 148
// @brief Canonical codec identity of xarm_msgs/MoveRequest.
// @details Exact identity UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveRequest_Codec_Identity :: "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced"
// @brief Original ROS type name for xarm_msgs/MoveRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveRequest_Native_Type :: "xarm_msgs/MoveRequest"
// @brief Selected original native identity for xarm_msgs/MoveRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/MoveRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/odin/API-CONTRACT.md
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
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsMoveRequest :: proc(v: ^Ros1Xarm_msgsMoveRequest, w: ^Writer) -> bool {
 if len(v.field_pose)>32 { w.code=22; return false }
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
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsMoveRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveRequest,bool) {
 v:=init_Ros1Xarm_msgsMoveRequest()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsMoveRequest :: proc(v: ^Ros1Xarm_msgsMoveRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=148}
 if !write_Ros1Xarm_msgsMoveRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=148}
 if !write_Ros1Xarm_msgsMoveRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/MoveRequest value.
// @details Require the complete 20..148-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsMoveRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveRequest,u32) {
 if len(bytes)<20 || len(bytes)>148 { return Ros1Xarm_msgsMoveRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsMoveRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsMoveRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/MoveResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveResponse :: struct {
 // @brief xarm_msgs/MoveResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/MoveResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/MoveResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/MoveResponse.
// @details Exact identity UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveResponse_Codec_Identity :: "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d"
// @brief Original ROS type name for xarm_msgs/MoveResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveResponse_Native_Type :: "xarm_msgs/MoveResponse"
// @brief Selected original native identity for xarm_msgs/MoveResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/MoveResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsMoveResponse :: proc() -> Ros1Xarm_msgsMoveResponse {
 v: Ros1Xarm_msgsMoveResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/MoveResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsMoveResponse :: proc(v: ^Ros1Xarm_msgsMoveResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/MoveResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsMoveResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveResponse,bool) {
 v:=init_Ros1Xarm_msgsMoveResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/MoveResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsMoveResponse :: proc(v: ^Ros1Xarm_msgsMoveResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsMoveResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsMoveResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/MoveResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsMoveResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsMoveResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsMoveResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsMoveResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/MoveAxisAngleRequest value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 20..148 bytes and is identified by
// UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveAxisAngleRequest :: struct {
 // @brief xarm_msgs/MoveAxisAngleRequest.pose: float32; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
 field_pose: []f32,
 // @brief xarm_msgs/MoveAxisAngleRequest.mvvelo: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
 field_mvvelo: f32,
 // @brief xarm_msgs/MoveAxisAngleRequest.mvacc: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
 field_mvacc: f32,
 // @brief xarm_msgs/MoveAxisAngleRequest.mvtime: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
 field_mvtime: f32,
 // @brief xarm_msgs/MoveAxisAngleRequest.coord: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
 field_coord: i16,
 // @brief xarm_msgs/MoveAxisAngleRequest.relative: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
 field_relative: i16,
}
// @brief Maximum canonical extent of xarm_msgs/MoveAxisAngleRequest in bytes.
// @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveAxisAngleRequest_Maximum_Wire_Bytes :: 148
// @brief Canonical codec identity of xarm_msgs/MoveAxisAngleRequest.
// @details Exact identity UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveAxisAngleRequest_Codec_Identity :: "UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30"
// @brief Original ROS type name for xarm_msgs/MoveAxisAngleRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveAxisAngleRequest_Native_Type :: "xarm_msgs/MoveAxisAngleRequest"
// @brief Selected original native identity for xarm_msgs/MoveAxisAngleRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveAxisAngleRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/MoveAxisAngleRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsMoveAxisAngleRequest :: proc() -> Ros1Xarm_msgsMoveAxisAngleRequest {
 v: Ros1Xarm_msgsMoveAxisAngleRequest
 v.field_pose = nil
 v.field_mvvelo = 0
 v.field_mvacc = 0
 v.field_mvtime = 0
 v.field_coord = 0
 v.field_relative = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/MoveAxisAngleRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsMoveAxisAngleRequest :: proc(v: ^Ros1Xarm_msgsMoveAxisAngleRequest, w: ^Writer) -> bool {
 if len(v.field_pose)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_pose)),4) { return false }
 for e in v.field_pose {
 if !put_float32(w,e) { return false }
 }
 if !put_float32(w,v.field_mvvelo) { return false }
 if !put_float32(w,v.field_mvacc) { return false }
 if !put_float32(w,v.field_mvtime) { return false }
 if !put_integer(w,u64(v.field_coord),2) { return false }
 if !put_integer(w,u64(v.field_relative),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/MoveAxisAngleRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsMoveAxisAngleRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveAxisAngleRequest,bool) {
 v:=init_Ros1Xarm_msgsMoveAxisAngleRequest()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
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
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_coord=i16(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_relative=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/MoveAxisAngleRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsMoveAxisAngleRequest :: proc(v: ^Ros1Xarm_msgsMoveAxisAngleRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=148}
 if !write_Ros1Xarm_msgsMoveAxisAngleRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=148}
 if !write_Ros1Xarm_msgsMoveAxisAngleRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/MoveAxisAngleRequest value.
// @details Require the complete 20..148-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveAxisAngleRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsMoveAxisAngleRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveAxisAngleRequest,u32) {
 if len(bytes)<20 || len(bytes)>148 { return Ros1Xarm_msgsMoveAxisAngleRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsMoveAxisAngleRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsMoveAxisAngleRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/MoveAxisAngleResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveAxisAngleResponse :: struct {
 // @brief xarm_msgs/MoveAxisAngleResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/MoveAxisAngleResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/MoveAxisAngleResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveAxisAngleResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/MoveAxisAngleResponse.
// @details Exact identity UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveAxisAngleResponse_Codec_Identity :: "UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300"
// @brief Original ROS type name for xarm_msgs/MoveAxisAngleResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveAxisAngleResponse_Native_Type :: "xarm_msgs/MoveAxisAngleResponse"
// @brief Selected original native identity for xarm_msgs/MoveAxisAngleResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveAxisAngleResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/MoveAxisAngleResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsMoveAxisAngleResponse :: proc() -> Ros1Xarm_msgsMoveAxisAngleResponse {
 v: Ros1Xarm_msgsMoveAxisAngleResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/MoveAxisAngleResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsMoveAxisAngleResponse :: proc(v: ^Ros1Xarm_msgsMoveAxisAngleResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/MoveAxisAngleResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsMoveAxisAngleResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveAxisAngleResponse,bool) {
 v:=init_Ros1Xarm_msgsMoveAxisAngleResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/MoveAxisAngleResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsMoveAxisAngleResponse :: proc(v: ^Ros1Xarm_msgsMoveAxisAngleResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsMoveAxisAngleResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsMoveAxisAngleResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/MoveAxisAngleResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveAxisAngleResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsMoveAxisAngleResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveAxisAngleResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsMoveAxisAngleResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsMoveAxisAngleResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsMoveAxisAngleResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/MoveVeloRequest value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies
// 8..136 bytes and is identified by
// UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVeloRequest :: struct {
 // @brief xarm_msgs/MoveVeloRequest.velocities: float32; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/odin/API-CONTRACT.md
 field_velocities: []f32,
 // @brief xarm_msgs/MoveVeloRequest.jnt_sync: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/odin/API-CONTRACT.md
 field_jnt_sync: i16,
 // @brief xarm_msgs/MoveVeloRequest.coord: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/odin/API-CONTRACT.md
 field_coord: i16,
}
// @brief Maximum canonical extent of xarm_msgs/MoveVeloRequest in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVeloRequest_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of xarm_msgs/MoveVeloRequest.
// @details Exact identity UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVeloRequest_Codec_Identity :: "UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204"
// @brief Original ROS type name for xarm_msgs/MoveVeloRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVeloRequest_Native_Type :: "xarm_msgs/MoveVeloRequest"
// @brief Selected original native identity for xarm_msgs/MoveVeloRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVeloRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/MoveVeloRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsMoveVeloRequest :: proc() -> Ros1Xarm_msgsMoveVeloRequest {
 v: Ros1Xarm_msgsMoveVeloRequest
 v.field_velocities = nil
 v.field_jnt_sync = 0
 v.field_coord = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/MoveVeloRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsMoveVeloRequest :: proc(v: ^Ros1Xarm_msgsMoveVeloRequest, w: ^Writer) -> bool {
 if len(v.field_velocities)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocities)),4) { return false }
 for e in v.field_velocities {
 if !put_float32(w,e) { return false }
 }
 if !put_integer(w,u64(v.field_jnt_sync),2) { return false }
 if !put_integer(w,u64(v.field_coord),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/MoveVeloRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsMoveVeloRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveVeloRequest,bool) {
 v:=init_Ros1Xarm_msgsMoveVeloRequest()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_velocities=make([]f32,int(n),allocator)
 }
 for &e in v.field_velocities {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_jnt_sync=i16(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_coord=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/MoveVeloRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsMoveVeloRequest :: proc(v: ^Ros1Xarm_msgsMoveVeloRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros1Xarm_msgsMoveVeloRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros1Xarm_msgsMoveVeloRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/MoveVeloRequest value.
// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVeloRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsMoveVeloRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveVeloRequest,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros1Xarm_msgsMoveVeloRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsMoveVeloRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsMoveVeloRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/MoveVeloResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVeloResponse :: struct {
 // @brief xarm_msgs/MoveVeloResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/MoveVeloResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/MoveVeloResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVeloResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/MoveVeloResponse.
// @details Exact identity UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVeloResponse_Codec_Identity :: "UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce"
// @brief Original ROS type name for xarm_msgs/MoveVeloResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVeloResponse_Native_Type :: "xarm_msgs/MoveVeloResponse"
// @brief Selected original native identity for xarm_msgs/MoveVeloResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVeloResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/MoveVeloResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsMoveVeloResponse :: proc() -> Ros1Xarm_msgsMoveVeloResponse {
 v: Ros1Xarm_msgsMoveVeloResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/MoveVeloResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsMoveVeloResponse :: proc(v: ^Ros1Xarm_msgsMoveVeloResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/MoveVeloResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsMoveVeloResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveVeloResponse,bool) {
 v:=init_Ros1Xarm_msgsMoveVeloResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/MoveVeloResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsMoveVeloResponse :: proc(v: ^Ros1Xarm_msgsMoveVeloResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsMoveVeloResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsMoveVeloResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/MoveVeloResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVeloResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsMoveVeloResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveVeloResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsMoveVeloResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsMoveVeloResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsMoveVeloResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/MoveVelocityRequest value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 10..138 bytes and is identified by
// UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVelocityRequest :: struct {
 // @brief xarm_msgs/MoveVelocityRequest.speeds: float32; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
 field_speeds: []f32,
 // @brief xarm_msgs/MoveVelocityRequest.is_sync: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
 field_is_sync: bool,
 // @brief xarm_msgs/MoveVelocityRequest.is_tool_coord: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
 field_is_tool_coord: bool,
 // @brief xarm_msgs/MoveVelocityRequest.duration: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
 field_duration: f32,
}
// @brief Maximum canonical extent of xarm_msgs/MoveVelocityRequest in bytes.
// @details The inclusive bound is 138 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVelocityRequest_Maximum_Wire_Bytes :: 138
// @brief Canonical codec identity of xarm_msgs/MoveVelocityRequest.
// @details Exact identity UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVelocityRequest_Codec_Identity :: "UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef"
// @brief Original ROS type name for xarm_msgs/MoveVelocityRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVelocityRequest_Native_Type :: "xarm_msgs/MoveVelocityRequest"
// @brief Selected original native identity for xarm_msgs/MoveVelocityRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVelocityRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/MoveVelocityRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsMoveVelocityRequest :: proc() -> Ros1Xarm_msgsMoveVelocityRequest {
 v: Ros1Xarm_msgsMoveVelocityRequest
 v.field_speeds = nil
 v.field_is_sync = false
 v.field_is_tool_coord = false
 v.field_duration = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/MoveVelocityRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsMoveVelocityRequest :: proc(v: ^Ros1Xarm_msgsMoveVelocityRequest, w: ^Writer) -> bool {
 if len(v.field_speeds)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_speeds)),4) { return false }
 for e in v.field_speeds {
 if !put_float32(w,e) { return false }
 }
 if !put_bool(w,v.field_is_sync) { return false }
 if !put_bool(w,v.field_is_tool_coord) { return false }
 if !put_float32(w,v.field_duration) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/MoveVelocityRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsMoveVelocityRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveVelocityRequest,bool) {
 v:=init_Ros1Xarm_msgsMoveVelocityRequest()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_speeds=make([]f32,int(n),allocator)
 }
 for &e in v.field_speeds {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_sync=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_tool_coord=bool(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_duration=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/MoveVelocityRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsMoveVelocityRequest :: proc(v: ^Ros1Xarm_msgsMoveVelocityRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=138}
 if !write_Ros1Xarm_msgsMoveVelocityRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=138}
 if !write_Ros1Xarm_msgsMoveVelocityRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/MoveVelocityRequest value.
// @details Require the complete 10..138-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsMoveVelocityRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveVelocityRequest,u32) {
 if len(bytes)<10 || len(bytes)>138 { return Ros1Xarm_msgsMoveVelocityRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsMoveVelocityRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsMoveVelocityRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/MoveVelocityResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVelocityResponse :: struct {
 // @brief xarm_msgs/MoveVelocityResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/MoveVelocityResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/MoveVelocityResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVelocityResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/MoveVelocityResponse.
// @details Exact identity UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVelocityResponse_Codec_Identity :: "UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc"
// @brief Original ROS type name for xarm_msgs/MoveVelocityResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVelocityResponse_Native_Type :: "xarm_msgs/MoveVelocityResponse"
// @brief Selected original native identity for xarm_msgs/MoveVelocityResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsMoveVelocityResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/MoveVelocityResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsMoveVelocityResponse :: proc() -> Ros1Xarm_msgsMoveVelocityResponse {
 v: Ros1Xarm_msgsMoveVelocityResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/MoveVelocityResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsMoveVelocityResponse :: proc(v: ^Ros1Xarm_msgsMoveVelocityResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/MoveVelocityResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsMoveVelocityResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveVelocityResponse,bool) {
 v:=init_Ros1Xarm_msgsMoveVelocityResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/MoveVelocityResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsMoveVelocityResponse :: proc(v: ^Ros1Xarm_msgsMoveVelocityResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsMoveVelocityResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsMoveVelocityResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/MoveVelocityResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsMoveVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsMoveVelocityResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsMoveVelocityResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsMoveVelocityResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsMoveVelocityResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsMoveVelocityResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/PlayTrajRequest value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies
// 8..264 bytes and is identified by
// UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsPlayTrajRequest :: struct {
 // @brief xarm_msgs/PlayTrajRequest.traj_file: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/odin/API-CONTRACT.md
 field_traj_file: string,
 // @brief xarm_msgs/PlayTrajRequest.repeat_times: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/odin/API-CONTRACT.md
 field_repeat_times: i16,
 // @brief xarm_msgs/PlayTrajRequest.speed_factor: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/odin/API-CONTRACT.md
 field_speed_factor: i16,
}
// @brief Maximum canonical extent of xarm_msgs/PlayTrajRequest in bytes.
// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsPlayTrajRequest_Maximum_Wire_Bytes :: 264
// @brief Canonical codec identity of xarm_msgs/PlayTrajRequest.
// @details Exact identity UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsPlayTrajRequest_Codec_Identity :: "UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5"
// @brief Original ROS type name for xarm_msgs/PlayTrajRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsPlayTrajRequest_Native_Type :: "xarm_msgs/PlayTrajRequest"
// @brief Selected original native identity for xarm_msgs/PlayTrajRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsPlayTrajRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/PlayTrajRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsPlayTrajRequest :: proc() -> Ros1Xarm_msgsPlayTrajRequest {
 v: Ros1Xarm_msgsPlayTrajRequest
 v.field_traj_file = ""
 v.field_repeat_times = 0
 v.field_speed_factor = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/PlayTrajRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsPlayTrajRequest :: proc(v: ^Ros1Xarm_msgsPlayTrajRequest, w: ^Writer) -> bool {
 if !put_string(w,v.field_traj_file,256) { return false }
 if !put_integer(w,u64(v.field_repeat_times),2) { return false }
 if !put_integer(w,u64(v.field_speed_factor),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/PlayTrajRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsPlayTrajRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsPlayTrajRequest,bool) {
 v:=init_Ros1Xarm_msgsPlayTrajRequest()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_traj_file=b
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_repeat_times=i16(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_speed_factor=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/PlayTrajRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsPlayTrajRequest :: proc(v: ^Ros1Xarm_msgsPlayTrajRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=264}
 if !write_Ros1Xarm_msgsPlayTrajRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=264}
 if !write_Ros1Xarm_msgsPlayTrajRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/PlayTrajRequest value.
// @details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsPlayTrajRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsPlayTrajRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsPlayTrajRequest,u32) {
 if len(bytes)<8 || len(bytes)>264 { return Ros1Xarm_msgsPlayTrajRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsPlayTrajRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsPlayTrajRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/PlayTrajResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsPlayTrajResponse :: struct {
 // @brief xarm_msgs/PlayTrajResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/PlayTrajResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/PlayTrajResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsPlayTrajResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/PlayTrajResponse.
// @details Exact identity UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsPlayTrajResponse_Codec_Identity :: "UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a"
// @brief Original ROS type name for xarm_msgs/PlayTrajResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsPlayTrajResponse_Native_Type :: "xarm_msgs/PlayTrajResponse"
// @brief Selected original native identity for xarm_msgs/PlayTrajResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsPlayTrajResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/PlayTrajResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsPlayTrajResponse :: proc() -> Ros1Xarm_msgsPlayTrajResponse {
 v: Ros1Xarm_msgsPlayTrajResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/PlayTrajResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsPlayTrajResponse :: proc(v: ^Ros1Xarm_msgsPlayTrajResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/PlayTrajResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsPlayTrajResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsPlayTrajResponse,bool) {
 v:=init_Ros1Xarm_msgsPlayTrajResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/PlayTrajResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsPlayTrajResponse :: proc(v: ^Ros1Xarm_msgsPlayTrajResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsPlayTrajResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsPlayTrajResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/PlayTrajResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsPlayTrajResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsPlayTrajResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsPlayTrajResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsPlayTrajResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsPlayTrajResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsPlayTrajResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetAxisRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 4..4
// bytes and is identified by UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetAxisRequest :: struct {
 // @brief xarm_msgs/SetAxisRequest.id: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/odin/API-CONTRACT.md
 field_id: i16,
 // @brief xarm_msgs/SetAxisRequest.data: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/odin/API-CONTRACT.md
 field_data: i16,
}
// @brief Maximum canonical extent of xarm_msgs/SetAxisRequest in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetAxisRequest_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of xarm_msgs/SetAxisRequest.
// @details Exact identity UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetAxisRequest_Codec_Identity :: "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6"
// @brief Original ROS type name for xarm_msgs/SetAxisRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetAxisRequest_Native_Type :: "xarm_msgs/SetAxisRequest"
// @brief Selected original native identity for xarm_msgs/SetAxisRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetAxisRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetAxisRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetAxisRequest :: proc() -> Ros1Xarm_msgsSetAxisRequest {
 v: Ros1Xarm_msgsSetAxisRequest
 v.field_id = 0
 v.field_data = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/SetAxisRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetAxisRequest :: proc(v: ^Ros1Xarm_msgsSetAxisRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_id),2) { return false }
 if !put_integer(w,u64(v.field_data),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetAxisRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/odin/API-CONTRACT.md
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetAxisRequest :: proc(v: ^Ros1Xarm_msgsSetAxisRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros1Xarm_msgsSetAxisRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros1Xarm_msgsSetAxisRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetAxisRequest value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetAxisRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetAxisRequest,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros1Xarm_msgsSetAxisRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetAxisRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetAxisRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetAxisResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetAxisResponse :: struct {
 // @brief xarm_msgs/SetAxisResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/SetAxisResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/SetAxisResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetAxisResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/SetAxisResponse.
// @details Exact identity UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetAxisResponse_Codec_Identity :: "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27"
// @brief Original ROS type name for xarm_msgs/SetAxisResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetAxisResponse_Native_Type :: "xarm_msgs/SetAxisResponse"
// @brief Selected original native identity for xarm_msgs/SetAxisResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetAxisResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetAxisResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetAxisResponse :: proc() -> Ros1Xarm_msgsSetAxisResponse {
 v: Ros1Xarm_msgsSetAxisResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/SetAxisResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetAxisResponse :: proc(v: ^Ros1Xarm_msgsSetAxisResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetAxisResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetAxisResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetAxisResponse,bool) {
 v:=init_Ros1Xarm_msgsSetAxisResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetAxisResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetAxisResponse :: proc(v: ^Ros1Xarm_msgsSetAxisResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsSetAxisResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsSetAxisResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetAxisResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetAxisResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetAxisResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsSetAxisResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetAxisResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetAxisResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetControllerAnalogIORequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..6
// bytes and is identified by UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetControllerAnalogIORequest :: struct {
 // @brief xarm_msgs/SetControllerAnalogIORequest.port_num: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
 field_port_num: i16,
 // @brief xarm_msgs/SetControllerAnalogIORequest.analog_value: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
 field_analog_value: f32,
}
// @brief Maximum canonical extent of xarm_msgs/SetControllerAnalogIORequest in bytes.
// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetControllerAnalogIORequest_Maximum_Wire_Bytes :: 6
// @brief Canonical codec identity of xarm_msgs/SetControllerAnalogIORequest.
// @details Exact identity UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetControllerAnalogIORequest_Codec_Identity :: "UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66"
// @brief Original ROS type name for xarm_msgs/SetControllerAnalogIORequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetControllerAnalogIORequest_Native_Type :: "xarm_msgs/SetControllerAnalogIORequest"
// @brief Selected original native identity for xarm_msgs/SetControllerAnalogIORequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetControllerAnalogIORequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetControllerAnalogIORequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetControllerAnalogIORequest :: proc() -> Ros1Xarm_msgsSetControllerAnalogIORequest {
 v: Ros1Xarm_msgsSetControllerAnalogIORequest
 v.field_port_num = 0
 v.field_analog_value = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/SetControllerAnalogIORequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetControllerAnalogIORequest :: proc(v: ^Ros1Xarm_msgsSetControllerAnalogIORequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_port_num),2) { return false }
 if !put_float32(w,v.field_analog_value) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetControllerAnalogIORequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetControllerAnalogIORequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetControllerAnalogIORequest,bool) {
 v:=init_Ros1Xarm_msgsSetControllerAnalogIORequest()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_port_num=i16(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_analog_value=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetControllerAnalogIORequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetControllerAnalogIORequest :: proc(v: ^Ros1Xarm_msgsSetControllerAnalogIORequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=6}
 if !write_Ros1Xarm_msgsSetControllerAnalogIORequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=6}
 if !write_Ros1Xarm_msgsSetControllerAnalogIORequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetControllerAnalogIORequest value.
// @details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetControllerAnalogIORequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetControllerAnalogIORequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetControllerAnalogIORequest,u32) {
 if len(bytes)<6 || len(bytes)>6 { return Ros1Xarm_msgsSetControllerAnalogIORequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetControllerAnalogIORequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetControllerAnalogIORequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetControllerAnalogIOResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetControllerAnalogIOResponse :: struct {
 // @brief xarm_msgs/SetControllerAnalogIOResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/SetControllerAnalogIOResponse.message: string; each string is 0..256 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/SetControllerAnalogIOResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetControllerAnalogIOResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/SetControllerAnalogIOResponse.
// @details Exact identity UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetControllerAnalogIOResponse_Codec_Identity :: "UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec"
// @brief Original ROS type name for xarm_msgs/SetControllerAnalogIOResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetControllerAnalogIOResponse_Native_Type :: "xarm_msgs/SetControllerAnalogIOResponse"
// @brief Selected original native identity for xarm_msgs/SetControllerAnalogIOResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetControllerAnalogIOResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetControllerAnalogIOResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetControllerAnalogIOResponse :: proc() -> Ros1Xarm_msgsSetControllerAnalogIOResponse {
 v: Ros1Xarm_msgsSetControllerAnalogIOResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/SetControllerAnalogIOResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetControllerAnalogIOResponse :: proc(v: ^Ros1Xarm_msgsSetControllerAnalogIOResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetControllerAnalogIOResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetControllerAnalogIOResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetControllerAnalogIOResponse,bool) {
 v:=init_Ros1Xarm_msgsSetControllerAnalogIOResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetControllerAnalogIOResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetControllerAnalogIOResponse :: proc(v: ^Ros1Xarm_msgsSetControllerAnalogIOResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsSetControllerAnalogIOResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsSetControllerAnalogIOResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetControllerAnalogIOResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetControllerAnalogIOResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetControllerAnalogIOResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetControllerAnalogIOResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsSetControllerAnalogIOResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetControllerAnalogIOResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetControllerAnalogIOResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetDigitalIORequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 4..4
// bytes and is identified by UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetDigitalIORequest :: struct {
 // @brief xarm_msgs/SetDigitalIORequest.io_num: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
 field_io_num: i16,
 // @brief xarm_msgs/SetDigitalIORequest.value: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
 field_value: i16,
}
// @brief Maximum canonical extent of xarm_msgs/SetDigitalIORequest in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetDigitalIORequest_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of xarm_msgs/SetDigitalIORequest.
// @details Exact identity UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetDigitalIORequest_Codec_Identity :: "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959"
// @brief Original ROS type name for xarm_msgs/SetDigitalIORequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetDigitalIORequest_Native_Type :: "xarm_msgs/SetDigitalIORequest"
// @brief Selected original native identity for xarm_msgs/SetDigitalIORequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetDigitalIORequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetDigitalIORequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetDigitalIORequest :: proc() -> Ros1Xarm_msgsSetDigitalIORequest {
 v: Ros1Xarm_msgsSetDigitalIORequest
 v.field_io_num = 0
 v.field_value = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/SetDigitalIORequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetDigitalIORequest :: proc(v: ^Ros1Xarm_msgsSetDigitalIORequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_io_num),2) { return false }
 if !put_integer(w,u64(v.field_value),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetDigitalIORequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetDigitalIORequest :: proc(v: ^Ros1Xarm_msgsSetDigitalIORequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros1Xarm_msgsSetDigitalIORequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros1Xarm_msgsSetDigitalIORequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetDigitalIORequest value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetDigitalIORequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetDigitalIORequest,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros1Xarm_msgsSetDigitalIORequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetDigitalIORequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetDigitalIORequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetDigitalIOResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetDigitalIOResponse :: struct {
 // @brief xarm_msgs/SetDigitalIOResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/SetDigitalIOResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/SetDigitalIOResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetDigitalIOResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/SetDigitalIOResponse.
// @details Exact identity UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetDigitalIOResponse_Codec_Identity :: "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a"
// @brief Original ROS type name for xarm_msgs/SetDigitalIOResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetDigitalIOResponse_Native_Type :: "xarm_msgs/SetDigitalIOResponse"
// @brief Selected original native identity for xarm_msgs/SetDigitalIOResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetDigitalIOResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetDigitalIOResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetDigitalIOResponse :: proc() -> Ros1Xarm_msgsSetDigitalIOResponse {
 v: Ros1Xarm_msgsSetDigitalIOResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/SetDigitalIOResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetDigitalIOResponse :: proc(v: ^Ros1Xarm_msgsSetDigitalIOResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetDigitalIOResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetDigitalIOResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetDigitalIOResponse,bool) {
 v:=init_Ros1Xarm_msgsSetDigitalIOResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetDigitalIOResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetDigitalIOResponse :: proc(v: ^Ros1Xarm_msgsSetDigitalIOResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsSetDigitalIOResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsSetDigitalIOResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetDigitalIOResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetDigitalIOResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetDigitalIOResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsSetDigitalIOResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetDigitalIOResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetDigitalIOResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetFloat32Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4
// bytes and is identified by UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetFloat32Request :: struct {
 // @brief xarm_msgs/SetFloat32Request.data: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/odin/API-CONTRACT.md
 field_data: f32,
}
// @brief Maximum canonical extent of xarm_msgs/SetFloat32Request in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetFloat32Request_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of xarm_msgs/SetFloat32Request.
// @details Exact identity UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetFloat32Request_Codec_Identity :: "UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033"
// @brief Original ROS type name for xarm_msgs/SetFloat32Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetFloat32Request_Native_Type :: "xarm_msgs/SetFloat32Request"
// @brief Selected original native identity for xarm_msgs/SetFloat32Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetFloat32Request_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetFloat32Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetFloat32Request :: proc() -> Ros1Xarm_msgsSetFloat32Request {
 v: Ros1Xarm_msgsSetFloat32Request
 v.field_data = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/SetFloat32Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetFloat32Request :: proc(v: ^Ros1Xarm_msgsSetFloat32Request, w: ^Writer) -> bool {
 if !put_float32(w,v.field_data) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetFloat32Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetFloat32Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetFloat32Request,bool) {
 v:=init_Ros1Xarm_msgsSetFloat32Request()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_data=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetFloat32Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetFloat32Request :: proc(v: ^Ros1Xarm_msgsSetFloat32Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros1Xarm_msgsSetFloat32Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros1Xarm_msgsSetFloat32Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetFloat32Request value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetFloat32Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetFloat32Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetFloat32Request,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros1Xarm_msgsSetFloat32Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetFloat32Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetFloat32Request{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetFloat32Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetFloat32Response :: struct {
 // @brief xarm_msgs/SetFloat32Response.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/SetFloat32Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/SetFloat32Response in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetFloat32Response_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/SetFloat32Response.
// @details Exact identity UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetFloat32Response_Codec_Identity :: "UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712"
// @brief Original ROS type name for xarm_msgs/SetFloat32Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetFloat32Response_Native_Type :: "xarm_msgs/SetFloat32Response"
// @brief Selected original native identity for xarm_msgs/SetFloat32Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetFloat32Response_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetFloat32Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetFloat32Response :: proc() -> Ros1Xarm_msgsSetFloat32Response {
 v: Ros1Xarm_msgsSetFloat32Response
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/SetFloat32Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetFloat32Response :: proc(v: ^Ros1Xarm_msgsSetFloat32Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetFloat32Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetFloat32Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetFloat32Response,bool) {
 v:=init_Ros1Xarm_msgsSetFloat32Response()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetFloat32Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetFloat32Response :: proc(v: ^Ros1Xarm_msgsSetFloat32Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsSetFloat32Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsSetFloat32Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetFloat32Response value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetFloat32Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetFloat32Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetFloat32Response,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsSetFloat32Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetFloat32Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetFloat32Response{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetInt16Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 2..2
// bytes and is identified by UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetInt16Request :: struct {
 // @brief xarm_msgs/SetInt16Request.data: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/odin/API-CONTRACT.md
 field_data: i16,
}
// @brief Maximum canonical extent of xarm_msgs/SetInt16Request in bytes.
// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetInt16Request_Maximum_Wire_Bytes :: 2
// @brief Canonical codec identity of xarm_msgs/SetInt16Request.
// @details Exact identity UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetInt16Request_Codec_Identity :: "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7"
// @brief Original ROS type name for xarm_msgs/SetInt16Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetInt16Request_Native_Type :: "xarm_msgs/SetInt16Request"
// @brief Selected original native identity for xarm_msgs/SetInt16Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetInt16Request_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetInt16Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetInt16Request :: proc() -> Ros1Xarm_msgsSetInt16Request {
 v: Ros1Xarm_msgsSetInt16Request
 v.field_data = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/SetInt16Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetInt16Request :: proc(v: ^Ros1Xarm_msgsSetInt16Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_data),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetInt16Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetInt16Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetInt16Request,bool) {
 v:=init_Ros1Xarm_msgsSetInt16Request()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_data=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetInt16Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetInt16Request :: proc(v: ^Ros1Xarm_msgsSetInt16Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2}
 if !write_Ros1Xarm_msgsSetInt16Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2}
 if !write_Ros1Xarm_msgsSetInt16Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetInt16Request value.
// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetInt16Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetInt16Request,u32) {
 if len(bytes)<2 || len(bytes)>2 { return Ros1Xarm_msgsSetInt16Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetInt16Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetInt16Request{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetInt16Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetInt16Response :: struct {
 // @brief xarm_msgs/SetInt16Response.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/SetInt16Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/SetInt16Response in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetInt16Response_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/SetInt16Response.
// @details Exact identity UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetInt16Response_Codec_Identity :: "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656"
// @brief Original ROS type name for xarm_msgs/SetInt16Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetInt16Response_Native_Type :: "xarm_msgs/SetInt16Response"
// @brief Selected original native identity for xarm_msgs/SetInt16Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetInt16Response_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetInt16Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetInt16Response :: proc() -> Ros1Xarm_msgsSetInt16Response {
 v: Ros1Xarm_msgsSetInt16Response
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/SetInt16Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetInt16Response :: proc(v: ^Ros1Xarm_msgsSetInt16Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetInt16Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetInt16Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetInt16Response,bool) {
 v:=init_Ros1Xarm_msgsSetInt16Response()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetInt16Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetInt16Response :: proc(v: ^Ros1Xarm_msgsSetInt16Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsSetInt16Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsSetInt16Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetInt16Response value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetInt16Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetInt16Response,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsSetInt16Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetInt16Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetInt16Response{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetLoadRequest value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 16..16 bytes and is identified by
// UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetLoadRequest :: struct {
 // @brief xarm_msgs/SetLoadRequest.mass: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
 field_mass: f32,
 // @brief xarm_msgs/SetLoadRequest.xc: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
 field_xc: f32,
 // @brief xarm_msgs/SetLoadRequest.yc: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
 field_yc: f32,
 // @brief xarm_msgs/SetLoadRequest.zc: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
 field_zc: f32,
}
// @brief Maximum canonical extent of xarm_msgs/SetLoadRequest in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetLoadRequest_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of xarm_msgs/SetLoadRequest.
// @details Exact identity UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetLoadRequest_Codec_Identity :: "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077"
// @brief Original ROS type name for xarm_msgs/SetLoadRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetLoadRequest_Native_Type :: "xarm_msgs/SetLoadRequest"
// @brief Selected original native identity for xarm_msgs/SetLoadRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetLoadRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetLoadRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetLoadRequest :: proc() -> Ros1Xarm_msgsSetLoadRequest {
 v: Ros1Xarm_msgsSetLoadRequest
 v.field_mass = 0
 v.field_xc = 0
 v.field_yc = 0
 v.field_zc = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/SetLoadRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetLoadRequest :: proc(v: ^Ros1Xarm_msgsSetLoadRequest, w: ^Writer) -> bool {
 if !put_float32(w,v.field_mass) { return false }
 if !put_float32(w,v.field_xc) { return false }
 if !put_float32(w,v.field_yc) { return false }
 if !put_float32(w,v.field_zc) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetLoadRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetLoadRequest :: proc(v: ^Ros1Xarm_msgsSetLoadRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros1Xarm_msgsSetLoadRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros1Xarm_msgsSetLoadRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetLoadRequest value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetLoadRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetLoadRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetLoadRequest,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros1Xarm_msgsSetLoadRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetLoadRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetLoadRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetLoadResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetLoadResponse :: struct {
 // @brief xarm_msgs/SetLoadResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/SetLoadResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/SetLoadResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetLoadResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/SetLoadResponse.
// @details Exact identity UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetLoadResponse_Codec_Identity :: "UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e"
// @brief Original ROS type name for xarm_msgs/SetLoadResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetLoadResponse_Native_Type :: "xarm_msgs/SetLoadResponse"
// @brief Selected original native identity for xarm_msgs/SetLoadResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetLoadResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetLoadResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetLoadResponse :: proc() -> Ros1Xarm_msgsSetLoadResponse {
 v: Ros1Xarm_msgsSetLoadResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/SetLoadResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetLoadResponse :: proc(v: ^Ros1Xarm_msgsSetLoadResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetLoadResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetLoadResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetLoadResponse,bool) {
 v:=init_Ros1Xarm_msgsSetLoadResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetLoadResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetLoadResponse :: proc(v: ^Ros1Xarm_msgsSetLoadResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsSetLoadResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsSetLoadResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetLoadResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetLoadResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetLoadResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetLoadResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsSetLoadResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetLoadResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetLoadResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetModbusTimeoutRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..5
// bytes and is identified by UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetModbusTimeoutRequest :: struct {
 // @brief xarm_msgs/SetModbusTimeoutRequest.timeout_ms: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/odin/API-CONTRACT.md
 field_timeout_ms: i32,
 // @brief xarm_msgs/SetModbusTimeoutRequest.is_transparent_transmission: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/odin/API-CONTRACT.md
 field_is_transparent_transmission: bool,
}
// @brief Maximum canonical extent of xarm_msgs/SetModbusTimeoutRequest in bytes.
// @details The inclusive bound is 5 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetModbusTimeoutRequest_Maximum_Wire_Bytes :: 5
// @brief Canonical codec identity of xarm_msgs/SetModbusTimeoutRequest.
// @details Exact identity UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetModbusTimeoutRequest_Codec_Identity :: "UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd"
// @brief Original ROS type name for xarm_msgs/SetModbusTimeoutRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetModbusTimeoutRequest_Native_Type :: "xarm_msgs/SetModbusTimeoutRequest"
// @brief Selected original native identity for xarm_msgs/SetModbusTimeoutRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetModbusTimeoutRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetModbusTimeoutRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetModbusTimeoutRequest :: proc() -> Ros1Xarm_msgsSetModbusTimeoutRequest {
 v: Ros1Xarm_msgsSetModbusTimeoutRequest
 v.field_timeout_ms = 0
 v.field_is_transparent_transmission = false
 return v
}
// @brief Append every canonical field of xarm_msgs/SetModbusTimeoutRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetModbusTimeoutRequest :: proc(v: ^Ros1Xarm_msgsSetModbusTimeoutRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_timeout_ms),4) { return false }
 if !put_bool(w,v.field_is_transparent_transmission) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetModbusTimeoutRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetModbusTimeoutRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetModbusTimeoutRequest,bool) {
 v:=init_Ros1Xarm_msgsSetModbusTimeoutRequest()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_timeout_ms=i32(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_transparent_transmission=bool(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetModbusTimeoutRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetModbusTimeoutRequest :: proc(v: ^Ros1Xarm_msgsSetModbusTimeoutRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=5}
 if !write_Ros1Xarm_msgsSetModbusTimeoutRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=5}
 if !write_Ros1Xarm_msgsSetModbusTimeoutRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetModbusTimeoutRequest value.
// @details Require the complete 5..5-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetModbusTimeoutRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetModbusTimeoutRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetModbusTimeoutRequest,u32) {
 if len(bytes)<5 || len(bytes)>5 { return Ros1Xarm_msgsSetModbusTimeoutRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetModbusTimeoutRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetModbusTimeoutRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetModbusTimeoutResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetModbusTimeoutResponse :: struct {
 // @brief xarm_msgs/SetModbusTimeoutResponse.message: string; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
 // @brief xarm_msgs/SetModbusTimeoutResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
}
// @brief Maximum canonical extent of xarm_msgs/SetModbusTimeoutResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetModbusTimeoutResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/SetModbusTimeoutResponse.
// @details Exact identity UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetModbusTimeoutResponse_Codec_Identity :: "UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8"
// @brief Original ROS type name for xarm_msgs/SetModbusTimeoutResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetModbusTimeoutResponse_Native_Type :: "xarm_msgs/SetModbusTimeoutResponse"
// @brief Selected original native identity for xarm_msgs/SetModbusTimeoutResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetModbusTimeoutResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetModbusTimeoutResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetModbusTimeoutResponse :: proc() -> Ros1Xarm_msgsSetModbusTimeoutResponse {
 v: Ros1Xarm_msgsSetModbusTimeoutResponse
 v.field_message = ""
 v.field_ret = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/SetModbusTimeoutResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetModbusTimeoutResponse :: proc(v: ^Ros1Xarm_msgsSetModbusTimeoutResponse, w: ^Writer) -> bool {
 if !put_string(w,v.field_message,256) { return false }
 if !put_integer(w,u64(v.field_ret),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetModbusTimeoutResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetModbusTimeoutResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetModbusTimeoutResponse,bool) {
 v:=init_Ros1Xarm_msgsSetModbusTimeoutResponse()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetModbusTimeoutResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetModbusTimeoutResponse :: proc(v: ^Ros1Xarm_msgsSetModbusTimeoutResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsSetModbusTimeoutResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsSetModbusTimeoutResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetModbusTimeoutResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetModbusTimeoutResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetModbusTimeoutResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetModbusTimeoutResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsSetModbusTimeoutResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetModbusTimeoutResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetModbusTimeoutResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetMultipleIntsRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies
// 4..68 bytes and is identified by
// UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetMultipleIntsRequest :: struct {
 // @brief xarm_msgs/SetMultipleIntsRequest.data_int: int16; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_data_int: []i16,
}
// @brief Maximum canonical extent of xarm_msgs/SetMultipleIntsRequest in bytes.
// @details The inclusive bound is 68 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetMultipleIntsRequest_Maximum_Wire_Bytes :: 68
// @brief Canonical codec identity of xarm_msgs/SetMultipleIntsRequest.
// @details Exact identity UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetMultipleIntsRequest_Codec_Identity :: "UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1"
// @brief Original ROS type name for xarm_msgs/SetMultipleIntsRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetMultipleIntsRequest_Native_Type :: "xarm_msgs/SetMultipleIntsRequest"
// @brief Selected original native identity for xarm_msgs/SetMultipleIntsRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetMultipleIntsRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetMultipleIntsRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetMultipleIntsRequest :: proc() -> Ros1Xarm_msgsSetMultipleIntsRequest {
 v: Ros1Xarm_msgsSetMultipleIntsRequest
 v.field_data_int = nil
 return v
}
// @brief Append every canonical field of xarm_msgs/SetMultipleIntsRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetMultipleIntsRequest :: proc(v: ^Ros1Xarm_msgsSetMultipleIntsRequest, w: ^Writer) -> bool {
 if len(v.field_data_int)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_data_int)),4) { return false }
 for e in v.field_data_int {
 if !put_integer(w,u64(e),2) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetMultipleIntsRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetMultipleIntsRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetMultipleIntsRequest,bool) {
 v:=init_Ros1Xarm_msgsSetMultipleIntsRequest()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_data_int=make([]i16,int(n),allocator)
 }
 for &e in v.field_data_int {
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 e=i16(b)
 }
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetMultipleIntsRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetMultipleIntsRequest :: proc(v: ^Ros1Xarm_msgsSetMultipleIntsRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=68}
 if !write_Ros1Xarm_msgsSetMultipleIntsRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=68}
 if !write_Ros1Xarm_msgsSetMultipleIntsRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetMultipleIntsRequest value.
// @details Require the complete 4..68-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetMultipleIntsRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetMultipleIntsRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetMultipleIntsRequest,u32) {
 if len(bytes)<4 || len(bytes)>68 { return Ros1Xarm_msgsSetMultipleIntsRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetMultipleIntsRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetMultipleIntsRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetMultipleIntsResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetMultipleIntsResponse :: struct {
 // @brief xarm_msgs/SetMultipleIntsResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/SetMultipleIntsResponse.message: string; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/SetMultipleIntsResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetMultipleIntsResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/SetMultipleIntsResponse.
// @details Exact identity UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetMultipleIntsResponse_Codec_Identity :: "UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32"
// @brief Original ROS type name for xarm_msgs/SetMultipleIntsResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetMultipleIntsResponse_Native_Type :: "xarm_msgs/SetMultipleIntsResponse"
// @brief Selected original native identity for xarm_msgs/SetMultipleIntsResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetMultipleIntsResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetMultipleIntsResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetMultipleIntsResponse :: proc() -> Ros1Xarm_msgsSetMultipleIntsResponse {
 v: Ros1Xarm_msgsSetMultipleIntsResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/SetMultipleIntsResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetMultipleIntsResponse :: proc(v: ^Ros1Xarm_msgsSetMultipleIntsResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetMultipleIntsResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetMultipleIntsResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetMultipleIntsResponse,bool) {
 v:=init_Ros1Xarm_msgsSetMultipleIntsResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetMultipleIntsResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetMultipleIntsResponse :: proc(v: ^Ros1Xarm_msgsSetMultipleIntsResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsSetMultipleIntsResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsSetMultipleIntsResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetMultipleIntsResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetMultipleIntsResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetMultipleIntsResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetMultipleIntsResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsSetMultipleIntsResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetMultipleIntsResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetMultipleIntsResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetStringRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 8..264 bytes and is identified by
// UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetStringRequest :: struct {
 // @brief xarm_msgs/SetStringRequest.str_data: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/odin/API-CONTRACT.md
 field_str_data: string,
 // @brief xarm_msgs/SetStringRequest.timeout: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/odin/API-CONTRACT.md
 field_timeout: f32,
}
// @brief Maximum canonical extent of xarm_msgs/SetStringRequest in bytes.
// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetStringRequest_Maximum_Wire_Bytes :: 264
// @brief Canonical codec identity of xarm_msgs/SetStringRequest.
// @details Exact identity UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetStringRequest_Codec_Identity :: "UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f"
// @brief Original ROS type name for xarm_msgs/SetStringRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetStringRequest_Native_Type :: "xarm_msgs/SetStringRequest"
// @brief Selected original native identity for xarm_msgs/SetStringRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetStringRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetStringRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetStringRequest :: proc() -> Ros1Xarm_msgsSetStringRequest {
 v: Ros1Xarm_msgsSetStringRequest
 v.field_str_data = ""
 v.field_timeout = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/SetStringRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetStringRequest :: proc(v: ^Ros1Xarm_msgsSetStringRequest, w: ^Writer) -> bool {
 if !put_string(w,v.field_str_data,256) { return false }
 if !put_float32(w,v.field_timeout) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetStringRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetStringRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetStringRequest,bool) {
 v:=init_Ros1Xarm_msgsSetStringRequest()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_str_data=b
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_timeout=f32(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetStringRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetStringRequest :: proc(v: ^Ros1Xarm_msgsSetStringRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=264}
 if !write_Ros1Xarm_msgsSetStringRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=264}
 if !write_Ros1Xarm_msgsSetStringRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetStringRequest value.
// @details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetStringRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetStringRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetStringRequest,u32) {
 if len(bytes)<8 || len(bytes)>264 { return Ros1Xarm_msgsSetStringRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetStringRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetStringRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetStringResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetStringResponse :: struct {
 // @brief xarm_msgs/SetStringResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/SetStringResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/SetStringResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetStringResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/SetStringResponse.
// @details Exact identity UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetStringResponse_Codec_Identity :: "UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade"
// @brief Original ROS type name for xarm_msgs/SetStringResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetStringResponse_Native_Type :: "xarm_msgs/SetStringResponse"
// @brief Selected original native identity for xarm_msgs/SetStringResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetStringResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetStringResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetStringResponse :: proc() -> Ros1Xarm_msgsSetStringResponse {
 v: Ros1Xarm_msgsSetStringResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/SetStringResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetStringResponse :: proc(v: ^Ros1Xarm_msgsSetStringResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetStringResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetStringResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetStringResponse,bool) {
 v:=init_Ros1Xarm_msgsSetStringResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/SetStringResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetStringResponse :: proc(v: ^Ros1Xarm_msgsSetStringResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsSetStringResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsSetStringResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetStringResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetStringResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetStringResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetStringResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsSetStringResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetStringResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetStringResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetToolModbusRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..4102 bytes and is identified by
// UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetToolModbusRequest :: struct {
 // @brief xarm_msgs/SetToolModbusRequest.send_data: uint8; 0..4096 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
 field_send_data: []u8,
 // @brief xarm_msgs/SetToolModbusRequest.respond_len: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
 field_respond_len: i16,
}
// @brief Maximum canonical extent of xarm_msgs/SetToolModbusRequest in bytes.
// @details The inclusive bound is 4102 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetToolModbusRequest_Maximum_Wire_Bytes :: 4102
// @brief Canonical codec identity of xarm_msgs/SetToolModbusRequest.
// @details Exact identity UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetToolModbusRequest_Codec_Identity :: "UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6"
// @brief Original ROS type name for xarm_msgs/SetToolModbusRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetToolModbusRequest_Native_Type :: "xarm_msgs/SetToolModbusRequest"
// @brief Selected original native identity for xarm_msgs/SetToolModbusRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetToolModbusRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetToolModbusRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetToolModbusRequest :: proc() -> Ros1Xarm_msgsSetToolModbusRequest {
 v: Ros1Xarm_msgsSetToolModbusRequest
 v.field_send_data = nil
 v.field_respond_len = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/SetToolModbusRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetToolModbusRequest :: proc(v: ^Ros1Xarm_msgsSetToolModbusRequest, w: ^Writer) -> bool {
 if len(v.field_send_data)>4096 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_send_data)),4) { return false }
 for e in v.field_send_data {
 if !put_integer(w,u64(e),1) { return false }
 }
 if !put_integer(w,u64(v.field_respond_len),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetToolModbusRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetToolModbusRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetToolModbusRequest,bool) {
 v:=init_Ros1Xarm_msgsSetToolModbusRequest()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4096 { r.code=22; return v,false }
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetToolModbusRequest :: proc(v: ^Ros1Xarm_msgsSetToolModbusRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4102}
 if !write_Ros1Xarm_msgsSetToolModbusRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4102}
 if !write_Ros1Xarm_msgsSetToolModbusRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetToolModbusRequest value.
// @details Require the complete 6..4102-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetToolModbusRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetToolModbusRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetToolModbusRequest,u32) {
 if len(bytes)<6 || len(bytes)>4102 { return Ros1Xarm_msgsSetToolModbusRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetToolModbusRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetToolModbusRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/SetToolModbusResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies
// 10..4362 bytes and is identified by
// UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetToolModbusResponse :: struct {
 // @brief xarm_msgs/SetToolModbusResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/SetToolModbusResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
 // @brief xarm_msgs/SetToolModbusResponse.respond_data: uint8; 0..4096 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
 field_respond_data: []u8,
}
// @brief Maximum canonical extent of xarm_msgs/SetToolModbusResponse in bytes.
// @details The inclusive bound is 4362 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetToolModbusResponse_Maximum_Wire_Bytes :: 4362
// @brief Canonical codec identity of xarm_msgs/SetToolModbusResponse.
// @details Exact identity UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetToolModbusResponse_Codec_Identity :: "UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76"
// @brief Original ROS type name for xarm_msgs/SetToolModbusResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetToolModbusResponse_Native_Type :: "xarm_msgs/SetToolModbusResponse"
// @brief Selected original native identity for xarm_msgs/SetToolModbusResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsSetToolModbusResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/SetToolModbusResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsSetToolModbusResponse :: proc() -> Ros1Xarm_msgsSetToolModbusResponse {
 v: Ros1Xarm_msgsSetToolModbusResponse
 v.field_ret = 0
 v.field_message = ""
 v.field_respond_data = nil
 return v
}
// @brief Append every canonical field of xarm_msgs/SetToolModbusResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsSetToolModbusResponse :: proc(v: ^Ros1Xarm_msgsSetToolModbusResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 if len(v.field_respond_data)>4096 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_respond_data)),4) { return false }
 for e in v.field_respond_data {
 if !put_integer(w,u64(e),1) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/SetToolModbusResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsSetToolModbusResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetToolModbusResponse,bool) {
 v:=init_Ros1Xarm_msgsSetToolModbusResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4096 { r.code=22; return v,false }
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsSetToolModbusResponse :: proc(v: ^Ros1Xarm_msgsSetToolModbusResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4362}
 if !write_Ros1Xarm_msgsSetToolModbusResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4362}
 if !write_Ros1Xarm_msgsSetToolModbusResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/SetToolModbusResponse value.
// @details Require the complete 10..4362-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsSetToolModbusResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsSetToolModbusResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsSetToolModbusResponse,u32) {
 if len(bytes)<10 || len(bytes)>4362 { return Ros1Xarm_msgsSetToolModbusResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsSetToolModbusResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsSetToolModbusResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/TCPOffsetRequest value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsTCPOffsetRequest :: struct {
 // @brief xarm_msgs/TCPOffsetRequest.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief xarm_msgs/TCPOffsetRequest.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief xarm_msgs/TCPOffsetRequest.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief xarm_msgs/TCPOffsetRequest.roll: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
 field_roll: f32,
 // @brief xarm_msgs/TCPOffsetRequest.pitch: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
 field_pitch: f32,
 // @brief xarm_msgs/TCPOffsetRequest.yaw: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
 field_yaw: f32,
}
// @brief Maximum canonical extent of xarm_msgs/TCPOffsetRequest in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsTCPOffsetRequest_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of xarm_msgs/TCPOffsetRequest.
// @details Exact identity UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsTCPOffsetRequest_Codec_Identity :: "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd"
// @brief Original ROS type name for xarm_msgs/TCPOffsetRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsTCPOffsetRequest_Native_Type :: "xarm_msgs/TCPOffsetRequest"
// @brief Selected original native identity for xarm_msgs/TCPOffsetRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsTCPOffsetRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/TCPOffsetRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
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
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
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
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
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
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsTCPOffsetRequest :: proc(v: ^Ros1Xarm_msgsTCPOffsetRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros1Xarm_msgsTCPOffsetRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros1Xarm_msgsTCPOffsetRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/TCPOffsetRequest value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsTCPOffsetRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsTCPOffsetRequest,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros1Xarm_msgsTCPOffsetRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsTCPOffsetRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsTCPOffsetRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/TCPOffsetResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsTCPOffsetResponse :: struct {
 // @brief xarm_msgs/TCPOffsetResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/TCPOffsetResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/TCPOffsetResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsTCPOffsetResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/TCPOffsetResponse.
// @details Exact identity UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsTCPOffsetResponse_Codec_Identity :: "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d"
// @brief Original ROS type name for xarm_msgs/TCPOffsetResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsTCPOffsetResponse_Native_Type :: "xarm_msgs/TCPOffsetResponse"
// @brief Selected original native identity for xarm_msgs/TCPOffsetResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsTCPOffsetResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/TCPOffsetResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsTCPOffsetResponse :: proc() -> Ros1Xarm_msgsTCPOffsetResponse {
 v: Ros1Xarm_msgsTCPOffsetResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/TCPOffsetResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsTCPOffsetResponse :: proc(v: ^Ros1Xarm_msgsTCPOffsetResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/TCPOffsetResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsTCPOffsetResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsTCPOffsetResponse,bool) {
 v:=init_Ros1Xarm_msgsTCPOffsetResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/TCPOffsetResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsTCPOffsetResponse :: proc(v: ^Ros1Xarm_msgsTCPOffsetResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsTCPOffsetResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsTCPOffsetResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/TCPOffsetResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsTCPOffsetResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsTCPOffsetResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsTCPOffsetResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsTCPOffsetResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsTCPOffsetResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/VacuumGripperCtrlRequest value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 13..13 bytes and is identified by
// UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVacuumGripperCtrlRequest :: struct {
 // @brief xarm_msgs/VacuumGripperCtrlRequest.on: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
 field_on: bool,
 // @brief xarm_msgs/VacuumGripperCtrlRequest.wait: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
 field_wait: bool,
 // @brief xarm_msgs/VacuumGripperCtrlRequest.timeout: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
 field_timeout: f32,
 // @brief xarm_msgs/VacuumGripperCtrlRequest.delay_sec: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
 field_delay_sec: f32,
 // @brief xarm_msgs/VacuumGripperCtrlRequest.sync: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sync: bool,
 // @brief xarm_msgs/VacuumGripperCtrlRequest.hardware_version: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
 field_hardware_version: i16,
}
// @brief Maximum canonical extent of xarm_msgs/VacuumGripperCtrlRequest in bytes.
// @details The inclusive bound is 13 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVacuumGripperCtrlRequest_Maximum_Wire_Bytes :: 13
// @brief Canonical codec identity of xarm_msgs/VacuumGripperCtrlRequest.
// @details Exact identity UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVacuumGripperCtrlRequest_Codec_Identity :: "UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff"
// @brief Original ROS type name for xarm_msgs/VacuumGripperCtrlRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVacuumGripperCtrlRequest_Native_Type :: "xarm_msgs/VacuumGripperCtrlRequest"
// @brief Selected original native identity for xarm_msgs/VacuumGripperCtrlRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVacuumGripperCtrlRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/VacuumGripperCtrlRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsVacuumGripperCtrlRequest :: proc() -> Ros1Xarm_msgsVacuumGripperCtrlRequest {
 v: Ros1Xarm_msgsVacuumGripperCtrlRequest
 v.field_on = false
 v.field_wait = false
 v.field_timeout = 0
 v.field_delay_sec = 0
 v.field_sync = false
 v.field_hardware_version = 0
 return v
}
// @brief Append every canonical field of xarm_msgs/VacuumGripperCtrlRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsVacuumGripperCtrlRequest :: proc(v: ^Ros1Xarm_msgsVacuumGripperCtrlRequest, w: ^Writer) -> bool {
 if !put_bool(w,v.field_on) { return false }
 if !put_bool(w,v.field_wait) { return false }
 if !put_float32(w,v.field_timeout) { return false }
 if !put_float32(w,v.field_delay_sec) { return false }
 if !put_bool(w,v.field_sync) { return false }
 if !put_integer(w,u64(v.field_hardware_version),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/VacuumGripperCtrlRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsVacuumGripperCtrlRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsVacuumGripperCtrlRequest,bool) {
 v:=init_Ros1Xarm_msgsVacuumGripperCtrlRequest()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_on=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_wait=bool(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_timeout=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_delay_sec=f32(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_sync=bool(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_hardware_version=i16(b)
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/VacuumGripperCtrlRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsVacuumGripperCtrlRequest :: proc(v: ^Ros1Xarm_msgsVacuumGripperCtrlRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=13}
 if !write_Ros1Xarm_msgsVacuumGripperCtrlRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=13}
 if !write_Ros1Xarm_msgsVacuumGripperCtrlRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/VacuumGripperCtrlRequest value.
// @details Require the complete 13..13-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVacuumGripperCtrlRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsVacuumGripperCtrlRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsVacuumGripperCtrlRequest,u32) {
 if len(bytes)<13 || len(bytes)>13 { return Ros1Xarm_msgsVacuumGripperCtrlRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsVacuumGripperCtrlRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsVacuumGripperCtrlRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_msgs/VacuumGripperCtrlResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies
// 6..262 bytes and is identified by
// UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVacuumGripperCtrlResponse :: struct {
 // @brief xarm_msgs/VacuumGripperCtrlResponse.ret: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ret: i16,
 // @brief xarm_msgs/VacuumGripperCtrlResponse.message: string; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of xarm_msgs/VacuumGripperCtrlResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVacuumGripperCtrlResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of xarm_msgs/VacuumGripperCtrlResponse.
// @details Exact identity UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVacuumGripperCtrlResponse_Codec_Identity :: "UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540"
// @brief Original ROS type name for xarm_msgs/VacuumGripperCtrlResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVacuumGripperCtrlResponse_Native_Type :: "xarm_msgs/VacuumGripperCtrlResponse"
// @brief Selected original native identity for xarm_msgs/VacuumGripperCtrlResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsVacuumGripperCtrlResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_msgs/VacuumGripperCtrlResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_msgsVacuumGripperCtrlResponse :: proc() -> Ros1Xarm_msgsVacuumGripperCtrlResponse {
 v: Ros1Xarm_msgsVacuumGripperCtrlResponse
 v.field_ret = 0
 v.field_message = ""
 return v
}
// @brief Append every canonical field of xarm_msgs/VacuumGripperCtrlResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_msgsVacuumGripperCtrlResponse :: proc(v: ^Ros1Xarm_msgsVacuumGripperCtrlResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ret),2) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_msgs/VacuumGripperCtrlResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_msgsVacuumGripperCtrlResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_msgsVacuumGripperCtrlResponse,bool) {
 v:=init_Ros1Xarm_msgsVacuumGripperCtrlResponse()
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_ret=i16(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete xarm_msgs/VacuumGripperCtrlResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_msgsVacuumGripperCtrlResponse :: proc(v: ^Ros1Xarm_msgsVacuumGripperCtrlResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Xarm_msgsVacuumGripperCtrlResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Xarm_msgsVacuumGripperCtrlResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/VacuumGripperCtrlResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_msgsVacuumGripperCtrlResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_msgsVacuumGripperCtrlResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_msgsVacuumGripperCtrlResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Xarm_msgsVacuumGripperCtrlResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsVacuumGripperCtrlResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsVacuumGripperCtrlResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_planner/exec_planRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerExec_planRequest :: struct {
 // @brief xarm_planner/exec_planRequest.exec: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/odin/API-CONTRACT.md
 field_exec: bool,
}
// @brief Maximum canonical extent of xarm_planner/exec_planRequest in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerExec_planRequest_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of xarm_planner/exec_planRequest.
// @details Exact identity UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerExec_planRequest_Codec_Identity :: "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3"
// @brief Original ROS type name for xarm_planner/exec_planRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerExec_planRequest_Native_Type :: "xarm_planner/exec_planRequest"
// @brief Selected original native identity for xarm_planner/exec_planRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerExec_planRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_planner/exec_planRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_plannerExec_planRequest :: proc() -> Ros1Xarm_plannerExec_planRequest {
 v: Ros1Xarm_plannerExec_planRequest
 v.field_exec = false
 return v
}
// @brief Append every canonical field of xarm_planner/exec_planRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_plannerExec_planRequest :: proc(v: ^Ros1Xarm_plannerExec_planRequest, w: ^Writer) -> bool {
 if !put_bool(w,v.field_exec) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_planner/exec_planRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_plannerExec_planRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_plannerExec_planRequest,bool) {
 v:=init_Ros1Xarm_plannerExec_planRequest()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_exec=bool(b)
 }
 return v,true
}
// @brief Encode one complete xarm_planner/exec_planRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_plannerExec_planRequest :: proc(v: ^Ros1Xarm_plannerExec_planRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Xarm_plannerExec_planRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Xarm_plannerExec_planRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_planner/exec_planRequest value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_plannerExec_planRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_plannerExec_planRequest,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Xarm_plannerExec_planRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_plannerExec_planRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_plannerExec_planRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_planner/exec_planResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerExec_planResponse :: struct {
 // @brief xarm_planner/exec_planResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of xarm_planner/exec_planResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerExec_planResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of xarm_planner/exec_planResponse.
// @details Exact identity UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerExec_planResponse_Codec_Identity :: "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625"
// @brief Original ROS type name for xarm_planner/exec_planResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerExec_planResponse_Native_Type :: "xarm_planner/exec_planResponse"
// @brief Selected original native identity for xarm_planner/exec_planResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerExec_planResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_planner/exec_planResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_plannerExec_planResponse :: proc() -> Ros1Xarm_plannerExec_planResponse {
 v: Ros1Xarm_plannerExec_planResponse
 v.field_success = false
 return v
}
// @brief Append every canonical field of xarm_planner/exec_planResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_plannerExec_planResponse :: proc(v: ^Ros1Xarm_plannerExec_planResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_planner/exec_planResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_plannerExec_planResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_plannerExec_planResponse,bool) {
 v:=init_Ros1Xarm_plannerExec_planResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete xarm_planner/exec_planResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_plannerExec_planResponse :: proc(v: ^Ros1Xarm_plannerExec_planResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Xarm_plannerExec_planResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Xarm_plannerExec_planResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_planner/exec_planResponse value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_plannerExec_planResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_plannerExec_planResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Xarm_plannerExec_planResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_plannerExec_planResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_plannerExec_planResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_planner/joint_planRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies
// 4..260 bytes and is identified by
// UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerJoint_planRequest :: struct {
 // @brief xarm_planner/joint_planRequest.target: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/odin/API-CONTRACT.md
 field_target: []f64,
}
// @brief Maximum canonical extent of xarm_planner/joint_planRequest in bytes.
// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerJoint_planRequest_Maximum_Wire_Bytes :: 260
// @brief Canonical codec identity of xarm_planner/joint_planRequest.
// @details Exact identity UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerJoint_planRequest_Codec_Identity :: "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9"
// @brief Original ROS type name for xarm_planner/joint_planRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerJoint_planRequest_Native_Type :: "xarm_planner/joint_planRequest"
// @brief Selected original native identity for xarm_planner/joint_planRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerJoint_planRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_planner/joint_planRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_plannerJoint_planRequest :: proc() -> Ros1Xarm_plannerJoint_planRequest {
 v: Ros1Xarm_plannerJoint_planRequest
 v.field_target = nil
 return v
}
// @brief Append every canonical field of xarm_planner/joint_planRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_plannerJoint_planRequest :: proc(v: ^Ros1Xarm_plannerJoint_planRequest, w: ^Writer) -> bool {
 if len(v.field_target)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_target)),4) { return false }
 for e in v.field_target {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of xarm_planner/joint_planRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_plannerJoint_planRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_plannerJoint_planRequest,bool) {
 v:=init_Ros1Xarm_plannerJoint_planRequest()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_target=make([]f64,int(n),allocator)
 }
 for &e in v.field_target {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete xarm_planner/joint_planRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_plannerJoint_planRequest :: proc(v: ^Ros1Xarm_plannerJoint_planRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=260}
 if !write_Ros1Xarm_plannerJoint_planRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=260}
 if !write_Ros1Xarm_plannerJoint_planRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_planner/joint_planRequest value.
// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_plannerJoint_planRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_plannerJoint_planRequest,u32) {
 if len(bytes)<4 || len(bytes)>260 { return Ros1Xarm_plannerJoint_planRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_plannerJoint_planRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_plannerJoint_planRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_planner/joint_planResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerJoint_planResponse :: struct {
 // @brief xarm_planner/joint_planResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of xarm_planner/joint_planResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerJoint_planResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of xarm_planner/joint_planResponse.
// @details Exact identity UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerJoint_planResponse_Codec_Identity :: "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668"
// @brief Original ROS type name for xarm_planner/joint_planResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerJoint_planResponse_Native_Type :: "xarm_planner/joint_planResponse"
// @brief Selected original native identity for xarm_planner/joint_planResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerJoint_planResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_planner/joint_planResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_plannerJoint_planResponse :: proc() -> Ros1Xarm_plannerJoint_planResponse {
 v: Ros1Xarm_plannerJoint_planResponse
 v.field_success = false
 return v
}
// @brief Append every canonical field of xarm_planner/joint_planResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_plannerJoint_planResponse :: proc(v: ^Ros1Xarm_plannerJoint_planResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_planner/joint_planResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_plannerJoint_planResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_plannerJoint_planResponse,bool) {
 v:=init_Ros1Xarm_plannerJoint_planResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete xarm_planner/joint_planResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_plannerJoint_planResponse :: proc(v: ^Ros1Xarm_plannerJoint_planResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Xarm_plannerJoint_planResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Xarm_plannerJoint_planResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_planner/joint_planResponse value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_plannerJoint_planResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_plannerJoint_planResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Xarm_plannerJoint_planResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_plannerJoint_planResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_plannerJoint_planResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_planner/pose_planRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies
// 56..56 bytes and is identified by
// UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerPose_planRequest :: struct {
 // @brief xarm_planner/pose_planRequest.target: geometry_msgs/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/odin/API-CONTRACT.md
 field_target: Ros1Geometry_msgsPose,
}
// @brief Maximum canonical extent of xarm_planner/pose_planRequest in bytes.
// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerPose_planRequest_Maximum_Wire_Bytes :: 56
// @brief Canonical codec identity of xarm_planner/pose_planRequest.
// @details Exact identity UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerPose_planRequest_Codec_Identity :: "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22"
// @brief Original ROS type name for xarm_planner/pose_planRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerPose_planRequest_Native_Type :: "xarm_planner/pose_planRequest"
// @brief Selected original native identity for xarm_planner/pose_planRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerPose_planRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_planner/pose_planRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_plannerPose_planRequest :: proc() -> Ros1Xarm_plannerPose_planRequest {
 v: Ros1Xarm_plannerPose_planRequest
 v.field_target = Ros1Geometry_msgsPose{}
 return v
}
// @brief Append every canonical field of xarm_planner/pose_planRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_plannerPose_planRequest :: proc(v: ^Ros1Xarm_plannerPose_planRequest, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsPose(&v.field_target,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_planner/pose_planRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_plannerPose_planRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_plannerPose_planRequest,bool) {
 v:=init_Ros1Xarm_plannerPose_planRequest()
 {
 b,ok:=read_Ros1Geometry_msgsPose(r,allocator); if !ok { return v,false }
 v.field_target=b
 }
 return v,true
}
// @brief Encode one complete xarm_planner/pose_planRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_plannerPose_planRequest :: proc(v: ^Ros1Xarm_plannerPose_planRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=56}
 if !write_Ros1Xarm_plannerPose_planRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=56}
 if !write_Ros1Xarm_plannerPose_planRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_planner/pose_planRequest value.
// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_plannerPose_planRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_plannerPose_planRequest,u32) {
 if len(bytes)<56 || len(bytes)>56 { return Ros1Xarm_plannerPose_planRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_plannerPose_planRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_plannerPose_planRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_planner/pose_planResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerPose_planResponse :: struct {
 // @brief xarm_planner/pose_planResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of xarm_planner/pose_planResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerPose_planResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of xarm_planner/pose_planResponse.
// @details Exact identity UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerPose_planResponse_Codec_Identity :: "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113"
// @brief Original ROS type name for xarm_planner/pose_planResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerPose_planResponse_Native_Type :: "xarm_planner/pose_planResponse"
// @brief Selected original native identity for xarm_planner/pose_planResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerPose_planResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_planner/pose_planResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_plannerPose_planResponse :: proc() -> Ros1Xarm_plannerPose_planResponse {
 v: Ros1Xarm_plannerPose_planResponse
 v.field_success = false
 return v
}
// @brief Append every canonical field of xarm_planner/pose_planResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_plannerPose_planResponse :: proc(v: ^Ros1Xarm_plannerPose_planResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_planner/pose_planResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_plannerPose_planResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_plannerPose_planResponse,bool) {
 v:=init_Ros1Xarm_plannerPose_planResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete xarm_planner/pose_planResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_plannerPose_planResponse :: proc(v: ^Ros1Xarm_plannerPose_planResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Xarm_plannerPose_planResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Xarm_plannerPose_planResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_planner/pose_planResponse value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_plannerPose_planResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_plannerPose_planResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Xarm_plannerPose_planResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_plannerPose_planResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_plannerPose_planResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_planner/single_straight_planRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies
// 56..56 bytes and is identified by
// UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerSingle_straight_planRequest :: struct {
 // @brief xarm_planner/single_straight_planRequest.target: geometry_msgs/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/odin/API-CONTRACT.md
 field_target: Ros1Geometry_msgsPose,
}
// @brief Maximum canonical extent of xarm_planner/single_straight_planRequest in bytes.
// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerSingle_straight_planRequest_Maximum_Wire_Bytes :: 56
// @brief Canonical codec identity of xarm_planner/single_straight_planRequest.
// @details Exact identity UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerSingle_straight_planRequest_Codec_Identity :: "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f"
// @brief Original ROS type name for xarm_planner/single_straight_planRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerSingle_straight_planRequest_Native_Type :: "xarm_planner/single_straight_planRequest"
// @brief Selected original native identity for xarm_planner/single_straight_planRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerSingle_straight_planRequest_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_planner/single_straight_planRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_plannerSingle_straight_planRequest :: proc() -> Ros1Xarm_plannerSingle_straight_planRequest {
 v: Ros1Xarm_plannerSingle_straight_planRequest
 v.field_target = Ros1Geometry_msgsPose{}
 return v
}
// @brief Append every canonical field of xarm_planner/single_straight_planRequest.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_plannerSingle_straight_planRequest :: proc(v: ^Ros1Xarm_plannerSingle_straight_planRequest, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsPose(&v.field_target,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_planner/single_straight_planRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_plannerSingle_straight_planRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_plannerSingle_straight_planRequest,bool) {
 v:=init_Ros1Xarm_plannerSingle_straight_planRequest()
 {
 b,ok:=read_Ros1Geometry_msgsPose(r,allocator); if !ok { return v,false }
 v.field_target=b
 }
 return v,true
}
// @brief Encode one complete xarm_planner/single_straight_planRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_plannerSingle_straight_planRequest :: proc(v: ^Ros1Xarm_plannerSingle_straight_planRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=56}
 if !write_Ros1Xarm_plannerSingle_straight_planRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=56}
 if !write_Ros1Xarm_plannerSingle_straight_planRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_planner/single_straight_planRequest value.
// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_plannerSingle_straight_planRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_plannerSingle_straight_planRequest,u32) {
 if len(bytes)<56 || len(bytes)>56 { return Ros1Xarm_plannerSingle_straight_planRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_plannerSingle_straight_planRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_plannerSingle_straight_planRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 xarm_planner/single_straight_planResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerSingle_straight_planResponse :: struct {
 // @brief xarm_planner/single_straight_planResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of xarm_planner/single_straight_planResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerSingle_straight_planResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of xarm_planner/single_straight_planResponse.
// @details Exact identity UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerSingle_straight_planResponse_Codec_Identity :: "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd"
// @brief Original ROS type name for xarm_planner/single_straight_planResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerSingle_straight_planResponse_Native_Type :: "xarm_planner/single_straight_planResponse"
// @brief Selected original native identity for xarm_planner/single_straight_planResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_plannerSingle_straight_planResponse_Native_Identity :: ""
// @brief Construct the declared defaults of xarm_planner/single_straight_planResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Xarm_plannerSingle_straight_planResponse :: proc() -> Ros1Xarm_plannerSingle_straight_planResponse {
 v: Ros1Xarm_plannerSingle_straight_planResponse
 v.field_success = false
 return v
}
// @brief Append every canonical field of xarm_planner/single_straight_planResponse.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Xarm_plannerSingle_straight_planResponse :: proc(v: ^Ros1Xarm_plannerSingle_straight_planResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of xarm_planner/single_straight_planResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Xarm_plannerSingle_straight_planResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Xarm_plannerSingle_straight_planResponse,bool) {
 v:=init_Ros1Xarm_plannerSingle_straight_planResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete xarm_planner/single_straight_planResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Xarm_plannerSingle_straight_planResponse :: proc(v: ^Ros1Xarm_plannerSingle_straight_planResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Xarm_plannerSingle_straight_planResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Xarm_plannerSingle_straight_planResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_planner/single_straight_planResponse value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Xarm_plannerSingle_straight_planResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Xarm_plannerSingle_straight_planResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Xarm_plannerSingle_straight_planResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_plannerSingle_straight_planResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_plannerSingle_straight_planResponse{},reader.code }
 return value,0
}
