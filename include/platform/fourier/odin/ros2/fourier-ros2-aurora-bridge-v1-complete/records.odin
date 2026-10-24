// @file records.odin
// @brief Full fourier odin codecs and original record metadata.
// @details Complete fourier ros2_aurora_bridge_v1 values in odin. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 2 uwvm_fourier_bridge/msg/GroupState value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 20..1684 bytes
// and is identified by UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgGroupState :: struct {
 // @brief uwvm_fourier_bridge/msg/GroupState.group: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/odin/API-CONTRACT.md
 field_group: string,
 // @brief uwvm_fourier_bridge/msg/GroupState.position: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/odin/API-CONTRACT.md
 field_position: []f64,
 // @brief uwvm_fourier_bridge/msg/GroupState.velocity: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: []f64,
 // @brief uwvm_fourier_bridge/msg/GroupState.effort: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/odin/API-CONTRACT.md
 field_effort: []f64,
 // @brief uwvm_fourier_bridge/msg/GroupState.motion_state: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/odin/API-CONTRACT.md
 field_motion_state: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/msg/GroupState in bytes.
// @details The inclusive bound is 1684 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgGroupState_Maximum_Wire_Bytes :: 1684
// @brief Canonical codec identity of uwvm_fourier_bridge/msg/GroupState.
// @details Exact identity UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgGroupState_Codec_Identity :: "UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4"
// @brief Original ROS type name for uwvm_fourier_bridge/msg/GroupState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgGroupState_Native_Type :: "uwvm_fourier_bridge/msg/GroupState"
// @brief Selected original native identity for uwvm_fourier_bridge/msg/GroupState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgGroupState_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/msg/GroupState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeMsgGroupState :: proc() -> Ros2Uwvm_fourier_bridgeMsgGroupState {
 v: Ros2Uwvm_fourier_bridgeMsgGroupState
 v.field_group = ""
 v.field_position = nil
 v.field_velocity = nil
 v.field_effort = nil
 v.field_motion_state = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/msg/GroupState.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeMsgGroupState :: proc(v: ^Ros2Uwvm_fourier_bridgeMsgGroupState, w: ^Writer) -> bool {
 if !put_string(w,v.field_group,128) { return false }
 if len(v.field_position)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_position)),4) { return false }
 for e in v.field_position {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_velocity)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocity)),4) { return false }
 for e in v.field_velocity {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_effort)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_effort)),4) { return false }
 for e in v.field_effort {
 if !put_float64(w,e) { return false }
 }
 if !put_integer(w,u64(v.field_motion_state),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/msg/GroupState.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeMsgGroupState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeMsgGroupState,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeMsgGroupState()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_group=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_position=make([]f64,int(n),allocator)
 }
 for &e in v.field_position {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_velocity=make([]f64,int(n),allocator)
 }
 for &e in v.field_velocity {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_effort=make([]f64,int(n),allocator)
 }
 for &e in v.field_effort {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_motion_state=i32(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/msg/GroupState value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeMsgGroupState :: proc(v: ^Ros2Uwvm_fourier_bridgeMsgGroupState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1684}
 if !write_Ros2Uwvm_fourier_bridgeMsgGroupState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1684}
 if !write_Ros2Uwvm_fourier_bridgeMsgGroupState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/msg/GroupState value.
// @details Require the complete 20..1684-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgGroupState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeMsgGroupState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeMsgGroupState,u32) {
 if len(bytes)<20 || len(bytes)>1684 { return Ros2Uwvm_fourier_bridgeMsgGroupState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeMsgGroupState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeMsgGroupState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/msg/GroupValues value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..648 bytes
// and is identified by UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgGroupValues :: struct {
 // @brief uwvm_fourier_bridge/msg/GroupValues.group: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/odin/API-CONTRACT.md
 field_group: string,
 // @brief uwvm_fourier_bridge/msg/GroupValues.values: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/msg/GroupValues in bytes.
// @details The inclusive bound is 648 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgGroupValues_Maximum_Wire_Bytes :: 648
// @brief Canonical codec identity of uwvm_fourier_bridge/msg/GroupValues.
// @details Exact identity UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgGroupValues_Codec_Identity :: "UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3"
// @brief Original ROS type name for uwvm_fourier_bridge/msg/GroupValues.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgGroupValues_Native_Type :: "uwvm_fourier_bridge/msg/GroupValues"
// @brief Selected original native identity for uwvm_fourier_bridge/msg/GroupValues.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgGroupValues_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/msg/GroupValues.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeMsgGroupValues :: proc() -> Ros2Uwvm_fourier_bridgeMsgGroupValues {
 v: Ros2Uwvm_fourier_bridgeMsgGroupValues
 v.field_group = ""
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/msg/GroupValues.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeMsgGroupValues :: proc(v: ^Ros2Uwvm_fourier_bridgeMsgGroupValues, w: ^Writer) -> bool {
 if !put_string(w,v.field_group,128) { return false }
 if len(v.field_values)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/msg/GroupValues.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeMsgGroupValues :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeMsgGroupValues,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeMsgGroupValues()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_group=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_values=make([]f64,int(n),allocator)
 }
 for &e in v.field_values {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/msg/GroupValues value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeMsgGroupValues :: proc(v: ^Ros2Uwvm_fourier_bridgeMsgGroupValues, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=648}
 if !write_Ros2Uwvm_fourier_bridgeMsgGroupValues(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=648}
 if !write_Ros2Uwvm_fourier_bridgeMsgGroupValues(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/msg/GroupValues value.
// @details Require the complete 8..648-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgGroupValues; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeMsgGroupValues :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeMsgGroupValues,u32) {
 if len(bytes)<8 || len(bytes)>648 { return Ros2Uwvm_fourier_bridgeMsgGroupValues{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeMsgGroupValues(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeMsgGroupValues{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/msg/MotionRecipe value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies 18..1170 bytes
// and is identified by UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgMotionRecipe :: struct {
 // @brief uwvm_fourier_bridge/msg/MotionRecipe.move_type: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
 field_move_type: u8,
 // @brief uwvm_fourier_bridge/msg/MotionRecipe.group: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
 field_group: string,
 // @brief uwvm_fourier_bridge/msg/MotionRecipe.position: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
 field_position: []f64,
 // @brief uwvm_fourier_bridge/msg/MotionRecipe.has_velocity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
 field_has_velocity: bool,
 // @brief uwvm_fourier_bridge/msg/MotionRecipe.velocity: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: []f64,
 // @brief uwvm_fourier_bridge/msg/MotionRecipe.expected_velocity: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
 field_expected_velocity: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/msg/MotionRecipe in bytes.
// @details The inclusive bound is 1170 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgMotionRecipe_Maximum_Wire_Bytes :: 1170
// @brief Canonical codec identity of uwvm_fourier_bridge/msg/MotionRecipe.
// @details Exact identity UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgMotionRecipe_Codec_Identity :: "UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14"
// @brief Original ROS type name for uwvm_fourier_bridge/msg/MotionRecipe.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgMotionRecipe_Native_Type :: "uwvm_fourier_bridge/msg/MotionRecipe"
// @brief Selected original native identity for uwvm_fourier_bridge/msg/MotionRecipe.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgMotionRecipe_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/msg/MotionRecipe.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeMsgMotionRecipe :: proc() -> Ros2Uwvm_fourier_bridgeMsgMotionRecipe {
 v: Ros2Uwvm_fourier_bridgeMsgMotionRecipe
 v.field_move_type = 0
 v.field_group = ""
 v.field_position = nil
 v.field_has_velocity = false
 v.field_velocity = nil
 v.field_expected_velocity = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/msg/MotionRecipe.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeMsgMotionRecipe :: proc(v: ^Ros2Uwvm_fourier_bridgeMsgMotionRecipe, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_move_type),1) { return false }
 if !put_string(w,v.field_group,128) { return false }
 if len(v.field_position)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_position)),4) { return false }
 for e in v.field_position {
 if !put_float64(w,e) { return false }
 }
 if !put_bool(w,v.field_has_velocity) { return false }
 if len(v.field_velocity)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocity)),4) { return false }
 for e in v.field_velocity {
 if !put_float64(w,e) { return false }
 }
 if !put_integer(w,u64(v.field_expected_velocity),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/msg/MotionRecipe.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeMsgMotionRecipe :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeMsgMotionRecipe,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeMsgMotionRecipe()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_move_type=u8(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_group=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_position=make([]f64,int(n),allocator)
 }
 for &e in v.field_position {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_has_velocity=bool(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_velocity=make([]f64,int(n),allocator)
 }
 for &e in v.field_velocity {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_expected_velocity=i32(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/msg/MotionRecipe value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeMsgMotionRecipe :: proc(v: ^Ros2Uwvm_fourier_bridgeMsgMotionRecipe, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1170}
 if !write_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1170}
 if !write_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/msg/MotionRecipe value.
// @details Require the complete 18..1170-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeMsgMotionRecipe :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeMsgMotionRecipe,u32) {
 if len(bytes)<18 || len(bytes)>1170 { return Ros2Uwvm_fourier_bridgeMsgMotionRecipe{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeMsgMotionRecipe{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/msg/Status value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies 32..14400
// bytes and is identified by UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgStatus :: struct {
 // @brief uwvm_fourier_bridge/msg/Status.fsm_state: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
 field_fsm_state: i32,
 // @brief uwvm_fourier_bridge/msg/Status.fsm_name: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
 field_fsm_name: string,
 // @brief uwvm_fourier_bridge/msg/Status.upper_fsm_state: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
 field_upper_fsm_state: i32,
 // @brief uwvm_fourier_bridge/msg/Status.upper_fsm_name: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
 field_upper_fsm_name: string,
 // @brief uwvm_fourier_bridge/msg/Status.velocity_source: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
 field_velocity_source: i32,
 // @brief uwvm_fourier_bridge/msg/Status.velocity_source_name: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
 field_velocity_source_name: string,
 // @brief uwvm_fourier_bridge/msg/Status.stand_pose: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
 field_stand_pose: []f64,
 // @brief uwvm_fourier_bridge/msg/Status.groups: uwvm_fourier_bridge/msg/GroupState; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
 field_groups: []Ros2Uwvm_fourier_bridgeMsgGroupState,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/msg/Status in bytes.
// @details The inclusive bound is 14400 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgStatus_Maximum_Wire_Bytes :: 14400
// @brief Canonical codec identity of uwvm_fourier_bridge/msg/Status.
// @details Exact identity UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgStatus_Codec_Identity :: "UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e"
// @brief Original ROS type name for uwvm_fourier_bridge/msg/Status.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgStatus_Native_Type :: "uwvm_fourier_bridge/msg/Status"
// @brief Selected original native identity for uwvm_fourier_bridge/msg/Status.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgStatus_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/msg/Status.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeMsgStatus :: proc() -> Ros2Uwvm_fourier_bridgeMsgStatus {
 v: Ros2Uwvm_fourier_bridgeMsgStatus
 v.field_fsm_state = 0
 v.field_fsm_name = ""
 v.field_upper_fsm_state = 0
 v.field_upper_fsm_name = ""
 v.field_velocity_source = 0
 v.field_velocity_source_name = ""
 v.field_stand_pose = nil
 v.field_groups = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/msg/Status.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeMsgStatus :: proc(v: ^Ros2Uwvm_fourier_bridgeMsgStatus, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_fsm_state),4) { return false }
 if !put_string(w,v.field_fsm_name,128) { return false }
 if !put_integer(w,u64(v.field_upper_fsm_state),4) { return false }
 if !put_string(w,v.field_upper_fsm_name,128) { return false }
 if !put_integer(w,u64(v.field_velocity_source),4) { return false }
 if !put_string(w,v.field_velocity_source_name,128) { return false }
 if len(v.field_stand_pose)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_stand_pose)),4) { return false }
 for e in v.field_stand_pose {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_groups)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_groups)),4) { return false }
 for e in v.field_groups {
 item:=e
 if !write_Ros2Uwvm_fourier_bridgeMsgGroupState(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/msg/Status.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeMsgStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeMsgStatus,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeMsgStatus()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_fsm_state=i32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_fsm_name=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_upper_fsm_state=i32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_upper_fsm_name=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_velocity_source=i32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_velocity_source_name=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_stand_pose=make([]f64,int(n),allocator)
 }
 for &e in v.field_stand_pose {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_groups=make([]Ros2Uwvm_fourier_bridgeMsgGroupState,int(n),allocator)
 }
 for &e in v.field_groups {
 {
 b,ok:=read_Ros2Uwvm_fourier_bridgeMsgGroupState(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/msg/Status value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeMsgStatus :: proc(v: ^Ros2Uwvm_fourier_bridgeMsgStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=14400}
 if !write_Ros2Uwvm_fourier_bridgeMsgStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=14400}
 if !write_Ros2Uwvm_fourier_bridgeMsgStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/msg/Status value.
// @details Require the complete 32..14400-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeMsgStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeMsgStatus,u32) {
 if len(bytes)<32 || len(bytes)>14400 { return Ros2Uwvm_fourier_bridgeMsgStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeMsgStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeMsgStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/msg/VelocityCommand value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 40..40 bytes
// and is identified by UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgVelocityCommand :: struct {
 // @brief uwvm_fourier_bridge/msg/VelocityCommand.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/msg/VelocityCommand.vx: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
 field_vx: f64,
 // @brief uwvm_fourier_bridge/msg/VelocityCommand.vy: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
 field_vy: f64,
 // @brief uwvm_fourier_bridge/msg/VelocityCommand.yaw: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
 field_yaw: f64,
 // @brief uwvm_fourier_bridge/msg/VelocityCommand.duration: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
 field_duration: f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/msg/VelocityCommand in bytes.
// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgVelocityCommand_Maximum_Wire_Bytes :: 40
// @brief Canonical codec identity of uwvm_fourier_bridge/msg/VelocityCommand.
// @details Exact identity UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgVelocityCommand_Codec_Identity :: "UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d"
// @brief Original ROS type name for uwvm_fourier_bridge/msg/VelocityCommand.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgVelocityCommand_Native_Type :: "uwvm_fourier_bridge/msg/VelocityCommand"
// @brief Selected original native identity for uwvm_fourier_bridge/msg/VelocityCommand.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeMsgVelocityCommand_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/msg/VelocityCommand.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeMsgVelocityCommand :: proc() -> Ros2Uwvm_fourier_bridgeMsgVelocityCommand {
 v: Ros2Uwvm_fourier_bridgeMsgVelocityCommand
 v.field_sequence = 0
 v.field_vx = 0
 v.field_vy = 0
 v.field_yaw = 0
 v.field_duration = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/msg/VelocityCommand.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeMsgVelocityCommand :: proc(v: ^Ros2Uwvm_fourier_bridgeMsgVelocityCommand, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_float64(w,v.field_vx) { return false }
 if !put_float64(w,v.field_vy) { return false }
 if !put_float64(w,v.field_yaw) { return false }
 if !put_float64(w,v.field_duration) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/msg/VelocityCommand.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeMsgVelocityCommand :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeMsgVelocityCommand,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeMsgVelocityCommand()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_vx=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_vy=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_yaw=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_duration=f64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/msg/VelocityCommand value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeMsgVelocityCommand :: proc(v: ^Ros2Uwvm_fourier_bridgeMsgVelocityCommand, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=40}
 if !write_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=40}
 if !write_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/msg/VelocityCommand value.
// @details Require the complete 40..40-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeMsgVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeMsgVelocityCommand :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeMsgVelocityCommand,u32) {
 if len(bytes)<40 || len(bytes)>40 { return Ros2Uwvm_fourier_bridgeMsgVelocityCommand{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeMsgVelocityCommand{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/ExecuteMove_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..9372 bytes
// and is identified by UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/ExecuteMove_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/ExecuteMove_Request.moves: uwvm_fourier_bridge/msg/MotionRecipe; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/odin/API-CONTRACT.md
 field_moves: []Ros2Uwvm_fourier_bridgeMsgMotionRecipe,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/ExecuteMove_Request in bytes.
// @details The inclusive bound is 9372 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request_Maximum_Wire_Bytes :: 9372
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/ExecuteMove_Request.
// @details Exact identity UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request_Codec_Identity :: "UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/ExecuteMove_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request_Native_Type :: "uwvm_fourier_bridge/srv/ExecuteMove_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/ExecuteMove_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/ExecuteMove_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request {
 v: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
 v.field_sequence = 0
 v.field_moves = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/ExecuteMove_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if len(v.field_moves)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_moves)),4) { return false }
 for e in v.field_moves {
 item:=e
 if !write_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/ExecuteMove_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_moves=make([]Ros2Uwvm_fourier_bridgeMsgMotionRecipe,int(n),allocator)
 }
 for &e in v.field_moves {
 {
 b,ok:=read_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/ExecuteMove_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=9372}
 if !write_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=9372}
 if !write_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/ExecuteMove_Request value.
// @details Require the complete 12..9372-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request,u32) {
 if len(bytes)<12 || len(bytes)>9372 { return Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/ExecuteMove_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/ExecuteMove_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/ExecuteMove_Response.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/ExecuteMove_Response in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/ExecuteMove_Response.
// @details Exact identity UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response_Codec_Identity :: "UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/ExecuteMove_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response_Native_Type :: "uwvm_fourier_bridge/srv/ExecuteMove_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/ExecuteMove_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/ExecuteMove_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response {
 v: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/ExecuteMove_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/ExecuteMove_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/ExecuteMove_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/ExecuteMove_Response value.
// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetBaseData_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/GetBaseData_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/GetBaseData_Request.key: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetBaseData_Request in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetBaseData_Request.
// @details Exact identity UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request_Codec_Identity :: "UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetBaseData_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request_Native_Type :: "uwvm_fourier_bridge/srv/GetBaseData_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetBaseData_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetBaseData_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request {
 v: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
 v.field_sequence = 0
 v.field_key = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetBaseData_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_string(w,v.field_key,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetBaseData_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_key=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetBaseData_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetBaseData_Request value.
// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetBaseData_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
// and is identified by UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/GetBaseData_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/GetBaseData_Response.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/GetBaseData_Response.values: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetBaseData_Response in bytes.
// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response_Maximum_Wire_Bytes :: 652
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetBaseData_Response.
// @details Exact identity UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response_Codec_Identity :: "UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetBaseData_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response_Native_Type :: "uwvm_fourier_bridge/srv/GetBaseData_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetBaseData_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetBaseData_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response {
 v: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
 v.field_status = 0
 v.field_error = ""
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetBaseData_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if len(v.field_values)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetBaseData_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_values=make([]f64,int(n),allocator)
 }
 for &e in v.field_values {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetBaseData_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=652}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=652}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetBaseData_Response value.
// @details Require the complete 12..652-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response,u32) {
 if len(bytes)<12 || len(bytes)>652 { return Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetCartesianState_Request value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..272 bytes
// and is identified by UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/GetCartesianState_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/GetCartesianState_Request.group: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_group: string,
 // @brief uwvm_fourier_bridge/srv/GetCartesianState_Request.key: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetCartesianState_Request in bytes.
// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request_Maximum_Wire_Bytes :: 272
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetCartesianState_Request.
// @details Exact identity UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request_Codec_Identity :: "UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetCartesianState_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request_Native_Type :: "uwvm_fourier_bridge/srv/GetCartesianState_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetCartesianState_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetCartesianState_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request {
 v: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
 v.field_sequence = 0
 v.field_group = ""
 v.field_key = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetCartesianState_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_string(w,v.field_group,128) { return false }
 if !put_string(w,v.field_key,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetCartesianState_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_group=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_key=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetCartesianState_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=272}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=272}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetCartesianState_Request value.
// @details Require the complete 16..272-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,u32) {
 if len(bytes)<16 || len(bytes)>272 { return Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetCartesianState_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
// and is identified by UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/GetCartesianState_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/GetCartesianState_Response.error: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/GetCartesianState_Response.values: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetCartesianState_Response in bytes.
// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response_Maximum_Wire_Bytes :: 652
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetCartesianState_Response.
// @details Exact identity UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response_Codec_Identity :: "UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetCartesianState_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response_Native_Type :: "uwvm_fourier_bridge/srv/GetCartesianState_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetCartesianState_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetCartesianState_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response {
 v: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
 v.field_status = 0
 v.field_error = ""
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetCartesianState_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if len(v.field_values)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetCartesianState_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_values=make([]f64,int(n),allocator)
 }
 for &e in v.field_values {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetCartesianState_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=652}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=652}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetCartesianState_Response value.
// @details Require the complete 12..652-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response,u32) {
 if len(bytes)<12 || len(bytes)>652 { return Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetContactData_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetContactData_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/GetContactData_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/GetContactData_Request.key: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetContactData_Request in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetContactData_Request_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetContactData_Request.
// @details Exact identity UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetContactData_Request_Codec_Identity :: "UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetContactData_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetContactData_Request_Native_Type :: "uwvm_fourier_bridge/srv/GetContactData_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetContactData_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetContactData_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetContactData_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetContactData_Request {
 v: Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
 v.field_sequence = 0
 v.field_key = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetContactData_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetContactData_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_string(w,v.field_key,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetContactData_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_key=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetContactData_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetContactData_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetContactData_Request value.
// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros2Uwvm_fourier_bridgeSrvGetContactData_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetContactData_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetContactData_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
// and is identified by UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetContactData_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/GetContactData_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/GetContactData_Response.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/GetContactData_Response.values: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetContactData_Response in bytes.
// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetContactData_Response_Maximum_Wire_Bytes :: 652
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetContactData_Response.
// @details Exact identity UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetContactData_Response_Codec_Identity :: "UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetContactData_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetContactData_Response_Native_Type :: "uwvm_fourier_bridge/srv/GetContactData_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetContactData_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetContactData_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetContactData_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetContactData_Response {
 v: Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
 v.field_status = 0
 v.field_error = ""
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetContactData_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetContactData_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if len(v.field_values)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetContactData_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetContactData_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_values=make([]f64,int(n),allocator)
 }
 for &e in v.field_values {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetContactData_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetContactData_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=652}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=652}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetContactData_Response value.
// @details Require the complete 12..652-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetContactData_Response,u32) {
 if len(bytes)<12 || len(bytes)>652 { return Ros2Uwvm_fourier_bridgeSrvGetContactData_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetContactData_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetFsmName_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/GetFsmName_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetFsmName_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetFsmName_Request.
// @details Exact identity UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request_Codec_Identity :: "UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetFsmName_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request_Native_Type :: "uwvm_fourier_bridge/srv/GetFsmName_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetFsmName_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetFsmName_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request {
 v: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetFsmName_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetFsmName_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetFsmName_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetFsmName_Request value.
// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetFsmName_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..268 bytes
// and is identified by UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/GetFsmName_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/GetFsmName_Response.error: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/GetFsmName_Response.value: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
 field_value: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetFsmName_Response in bytes.
// @details The inclusive bound is 268 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response_Maximum_Wire_Bytes :: 268
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetFsmName_Response.
// @details Exact identity UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response_Codec_Identity :: "UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetFsmName_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response_Native_Type :: "uwvm_fourier_bridge/srv/GetFsmName_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetFsmName_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetFsmName_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response {
 v: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
 v.field_status = 0
 v.field_error = ""
 v.field_value = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetFsmName_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_string(w,v.field_value,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetFsmName_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_value=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetFsmName_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=268}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=268}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetFsmName_Response value.
// @details Require the complete 12..268-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response,u32) {
 if len(bytes)<12 || len(bytes)>268 { return Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetFsmState_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/GetFsmState_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetFsmState_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetFsmState_Request.
// @details Exact identity UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request_Codec_Identity :: "UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetFsmState_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request_Native_Type :: "uwvm_fourier_bridge/srv/GetFsmState_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetFsmState_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetFsmState_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request {
 v: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetFsmState_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetFsmState_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetFsmState_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetFsmState_Request value.
// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetFsmState_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/GetFsmState_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/GetFsmState_Response.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/GetFsmState_Response.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_value: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetFsmState_Response in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetFsmState_Response.
// @details Exact identity UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response_Codec_Identity :: "UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetFsmState_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response_Native_Type :: "uwvm_fourier_bridge/srv/GetFsmState_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetFsmState_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetFsmState_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response {
 v: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
 v.field_status = 0
 v.field_error = ""
 v.field_value = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetFsmState_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetFsmState_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_value=i32(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetFsmState_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetFsmState_Response value.
// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetGroupMotionState_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/GetGroupMotionState_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/GetGroupMotionState_Request.group: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_group: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetGroupMotionState_Request in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetGroupMotionState_Request.
// @details Exact identity UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request_Codec_Identity :: "UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetGroupMotionState_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request_Native_Type :: "uwvm_fourier_bridge/srv/GetGroupMotionState_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetGroupMotionState_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetGroupMotionState_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request {
 v: Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
 v.field_sequence = 0
 v.field_group = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetGroupMotionState_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_string(w,v.field_group,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetGroupMotionState_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_group=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetGroupMotionState_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetGroupMotionState_Request value.
// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetGroupMotionState_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/GetGroupMotionState_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/GetGroupMotionState_Response.error: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/GetGroupMotionState_Response.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_value: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetGroupMotionState_Response in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetGroupMotionState_Response.
// @details Exact identity UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response_Codec_Identity :: "UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetGroupMotionState_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response_Native_Type :: "uwvm_fourier_bridge/srv/GetGroupMotionState_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetGroupMotionState_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetGroupMotionState_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response {
 v: Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
 v.field_status = 0
 v.field_error = ""
 v.field_value = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetGroupMotionState_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetGroupMotionState_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_value=i32(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetGroupMotionState_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetGroupMotionState_Response value.
// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..272 bytes
// and is identified by UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.group: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/odin/API-CONTRACT.md
 field_group: string,
 // @brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.key: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request in bytes.
// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request_Maximum_Wire_Bytes :: 272
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.
// @details Exact identity UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request_Codec_Identity :: "UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request_Native_Type :: "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request {
 v: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
 v.field_sequence = 0
 v.field_group = ""
 v.field_key = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_string(w,v.field_group,128) { return false }
 if !put_string(w,v.field_key,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_group=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_key=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=272}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=272}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request value.
// @details Require the complete 16..272-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,u32) {
 if len(bytes)<16 || len(bytes)>272 { return Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
// and is identified by UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.error: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.values: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response in bytes.
// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response_Maximum_Wire_Bytes :: 652
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.
// @details Exact identity UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response_Codec_Identity :: "UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response_Native_Type :: "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response {
 v: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
 v.field_status = 0
 v.field_error = ""
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if len(v.field_values)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_values=make([]f64,int(n),allocator)
 }
 for &e in v.field_values {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=652}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=652}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response value.
// @details Require the complete 12..652-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response,u32) {
 if len(bytes)<12 || len(bytes)>652 { return Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetGroupState_Request value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..272 bytes
// and is identified by UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/GetGroupState_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/GetGroupState_Request.group: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_group: string,
 // @brief uwvm_fourier_bridge/srv/GetGroupState_Request.key: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetGroupState_Request in bytes.
// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request_Maximum_Wire_Bytes :: 272
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetGroupState_Request.
// @details Exact identity UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request_Codec_Identity :: "UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetGroupState_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request_Native_Type :: "uwvm_fourier_bridge/srv/GetGroupState_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetGroupState_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetGroupState_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request {
 v: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
 v.field_sequence = 0
 v.field_group = ""
 v.field_key = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetGroupState_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_string(w,v.field_group,128) { return false }
 if !put_string(w,v.field_key,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetGroupState_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_group=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_key=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetGroupState_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=272}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=272}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetGroupState_Request value.
// @details Require the complete 16..272-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,u32) {
 if len(bytes)<16 || len(bytes)>272 { return Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetGroupState_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
// and is identified by UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/GetGroupState_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/GetGroupState_Response.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/GetGroupState_Response.values: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetGroupState_Response in bytes.
// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response_Maximum_Wire_Bytes :: 652
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetGroupState_Response.
// @details Exact identity UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response_Codec_Identity :: "UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetGroupState_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response_Native_Type :: "uwvm_fourier_bridge/srv/GetGroupState_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetGroupState_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetGroupState_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response {
 v: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
 v.field_status = 0
 v.field_error = ""
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetGroupState_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if len(v.field_values)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetGroupState_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_values=make([]f64,int(n),allocator)
 }
 for &e in v.field_values {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetGroupState_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=652}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=652}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetGroupState_Response value.
// @details Require the complete 12..652-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response,u32) {
 if len(bytes)<12 || len(bytes)>652 { return Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetSnapshot_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/GetSnapshot_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetSnapshot_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetSnapshot_Request.
// @details Exact identity UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request_Codec_Identity :: "UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetSnapshot_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request_Native_Type :: "uwvm_fourier_bridge/srv/GetSnapshot_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetSnapshot_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetSnapshot_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request {
 v: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetSnapshot_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetSnapshot_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetSnapshot_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetSnapshot_Request value.
// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetSnapshot_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 40..14536
// bytes and is identified by UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/GetSnapshot_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/GetSnapshot_Response.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/GetSnapshot_Response.value: uwvm_fourier_bridge/msg/Status.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/odin/API-CONTRACT.md
 field_value: Ros2Uwvm_fourier_bridgeMsgStatus,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetSnapshot_Response in bytes.
// @details The inclusive bound is 14536 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response_Maximum_Wire_Bytes :: 14536
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetSnapshot_Response.
// @details Exact identity UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response_Codec_Identity :: "UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetSnapshot_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response_Native_Type :: "uwvm_fourier_bridge/srv/GetSnapshot_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetSnapshot_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetSnapshot_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response {
 v: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
 v.field_status = 0
 v.field_error = ""
 v.field_value = Ros2Uwvm_fourier_bridgeMsgStatus{}
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetSnapshot_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !write_Ros2Uwvm_fourier_bridgeMsgStatus(&v.field_value,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetSnapshot_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 b,ok:=read_Ros2Uwvm_fourier_bridgeMsgStatus(r,allocator); if !ok { return v,false }
 v.field_value=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetSnapshot_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=14536}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=14536}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetSnapshot_Response value.
// @details Require the complete 40..14536-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response,u32) {
 if len(bytes)<40 || len(bytes)>14536 { return Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetStandPose_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/GetStandPose_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetStandPose_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetStandPose_Request.
// @details Exact identity UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request_Codec_Identity :: "UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetStandPose_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request_Native_Type :: "uwvm_fourier_bridge/srv/GetStandPose_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetStandPose_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetStandPose_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request {
 v: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetStandPose_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetStandPose_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetStandPose_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetStandPose_Request value.
// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetStandPose_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
// and is identified by UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/GetStandPose_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/GetStandPose_Response.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/GetStandPose_Response.values: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetStandPose_Response in bytes.
// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response_Maximum_Wire_Bytes :: 652
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetStandPose_Response.
// @details Exact identity UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response_Codec_Identity :: "UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetStandPose_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response_Native_Type :: "uwvm_fourier_bridge/srv/GetStandPose_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetStandPose_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetStandPose_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response {
 v: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
 v.field_status = 0
 v.field_error = ""
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetStandPose_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if len(v.field_values)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetStandPose_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_values=make([]f64,int(n),allocator)
 }
 for &e in v.field_values {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetStandPose_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=652}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=652}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetStandPose_Response value.
// @details Require the complete 12..652-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response,u32) {
 if len(bytes)<12 || len(bytes)>652 { return Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetUpperFsmName_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/GetUpperFsmName_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetUpperFsmName_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetUpperFsmName_Request.
// @details Exact identity UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request_Codec_Identity :: "UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetUpperFsmName_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request_Native_Type :: "uwvm_fourier_bridge/srv/GetUpperFsmName_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetUpperFsmName_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetUpperFsmName_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request {
 v: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetUpperFsmName_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetUpperFsmName_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetUpperFsmName_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetUpperFsmName_Request value.
// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetUpperFsmName_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..268 bytes
// and is identified by UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/GetUpperFsmName_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/GetUpperFsmName_Response.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/GetUpperFsmName_Response.value: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
 field_value: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetUpperFsmName_Response in bytes.
// @details The inclusive bound is 268 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response_Maximum_Wire_Bytes :: 268
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetUpperFsmName_Response.
// @details Exact identity UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response_Codec_Identity :: "UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetUpperFsmName_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response_Native_Type :: "uwvm_fourier_bridge/srv/GetUpperFsmName_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetUpperFsmName_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetUpperFsmName_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response {
 v: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
 v.field_status = 0
 v.field_error = ""
 v.field_value = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetUpperFsmName_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_string(w,v.field_value,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetUpperFsmName_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_value=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetUpperFsmName_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=268}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=268}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetUpperFsmName_Response value.
// @details Require the complete 12..268-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response,u32) {
 if len(bytes)<12 || len(bytes)>268 { return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetUpperFsmState_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/GetUpperFsmState_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetUpperFsmState_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetUpperFsmState_Request.
// @details Exact identity UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request_Codec_Identity :: "UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetUpperFsmState_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request_Native_Type :: "uwvm_fourier_bridge/srv/GetUpperFsmState_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetUpperFsmState_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetUpperFsmState_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request {
 v: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetUpperFsmState_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetUpperFsmState_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetUpperFsmState_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetUpperFsmState_Request value.
// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetUpperFsmState_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/GetUpperFsmState_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/GetUpperFsmState_Response.error: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/GetUpperFsmState_Response.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_value: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetUpperFsmState_Response in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetUpperFsmState_Response.
// @details Exact identity UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response_Codec_Identity :: "UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetUpperFsmState_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response_Native_Type :: "uwvm_fourier_bridge/srv/GetUpperFsmState_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetUpperFsmState_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetUpperFsmState_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response {
 v: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
 v.field_status = 0
 v.field_error = ""
 v.field_value = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetUpperFsmState_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetUpperFsmState_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_value=i32(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetUpperFsmState_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetUpperFsmState_Response value.
// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetVelocitySource_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/GetVelocitySource_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetVelocitySource_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetVelocitySource_Request.
// @details Exact identity UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request_Codec_Identity :: "UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetVelocitySource_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request_Native_Type :: "uwvm_fourier_bridge/srv/GetVelocitySource_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetVelocitySource_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetVelocitySource_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request {
 v: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetVelocitySource_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetVelocitySource_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetVelocitySource_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetVelocitySource_Request value.
// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetVelocitySource_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/GetVelocitySource_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/GetVelocitySource_Response.error: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/GetVelocitySource_Response.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
 field_value: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetVelocitySource_Response in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetVelocitySource_Response.
// @details Exact identity UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response_Codec_Identity :: "UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetVelocitySource_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response_Native_Type :: "uwvm_fourier_bridge/srv/GetVelocitySource_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetVelocitySource_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetVelocitySource_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response {
 v: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
 v.field_status = 0
 v.field_error = ""
 v.field_value = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetVelocitySource_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetVelocitySource_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_value=i32(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetVelocitySource_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetVelocitySource_Response value.
// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetVelocitySourceName_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetVelocitySourceName_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.
// @details Exact identity UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request_Codec_Identity :: "UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request_Native_Type :: "uwvm_fourier_bridge/srv/GetVelocitySourceName_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request {
 v: Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetVelocitySourceName_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetVelocitySourceName_Request value.
// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/GetVelocitySourceName_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..268 bytes
// and is identified by UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.error: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.value: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/odin/API-CONTRACT.md
 field_value: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/GetVelocitySourceName_Response in bytes.
// @details The inclusive bound is 268 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response_Maximum_Wire_Bytes :: 268
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.
// @details Exact identity UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response_Codec_Identity :: "UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response_Native_Type :: "uwvm_fourier_bridge/srv/GetVelocitySourceName_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response {
 v: Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
 v.field_status = 0
 v.field_error = ""
 v.field_value = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_string(w,v.field_value,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_value=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/GetVelocitySourceName_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=268}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=268}
 if !write_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/GetVelocitySourceName_Response value.
// @details Require the complete 12..268-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response,
    u32) {
 if len(bytes)<12 || len(bytes)>268 { return Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetFsmState_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
// and is identified by UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/SetFsmState_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/SetFsmState_Request.state: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_state: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetFsmState_Request in bytes.
// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request_Maximum_Wire_Bytes :: 12
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetFsmState_Request.
// @details Exact identity UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request_Codec_Identity :: "UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetFsmState_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request_Native_Type :: "uwvm_fourier_bridge/srv/SetFsmState_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetFsmState_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/SetFsmState_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request {
 v: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
 v.field_sequence = 0
 v.field_state = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetFsmState_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_integer(w,u64(v.field_state),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetFsmState_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_state=i32(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/SetFsmState_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=12}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=12}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetFsmState_Request value.
// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request,u32) {
 if len(bytes)<12 || len(bytes)>12 { return Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetFsmState_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/SetFsmState_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/SetFsmState_Response.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetFsmState_Response in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetFsmState_Response.
// @details Exact identity UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response_Codec_Identity :: "UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetFsmState_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response_Native_Type :: "uwvm_fourier_bridge/srv/SetFsmState_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetFsmState_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/SetFsmState_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response {
 v: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetFsmState_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetFsmState_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/SetFsmState_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetFsmState_Response value.
// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetGroupCommand_Request value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 20..15572
// bytes and is identified by UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/SetGroupCommand_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/SetGroupCommand_Request.position: uwvm_fourier_bridge/msg/GroupValues; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/odin/API-CONTRACT.md
 field_position: []Ros2Uwvm_fourier_bridgeMsgGroupValues,
 // @brief uwvm_fourier_bridge/srv/SetGroupCommand_Request.velocity: uwvm_fourier_bridge/msg/GroupValues; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: []Ros2Uwvm_fourier_bridgeMsgGroupValues,
 // @brief uwvm_fourier_bridge/srv/SetGroupCommand_Request.torque: uwvm_fourier_bridge/msg/GroupValues; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/odin/API-CONTRACT.md
 field_torque: []Ros2Uwvm_fourier_bridgeMsgGroupValues,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetGroupCommand_Request in bytes.
// @details The inclusive bound is 15572 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_Maximum_Wire_Bytes :: 15572
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetGroupCommand_Request.
// @details Exact identity UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_Codec_Identity :: "UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetGroupCommand_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_Native_Type :: "uwvm_fourier_bridge/srv/SetGroupCommand_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetGroupCommand_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/SetGroupCommand_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request {
 v: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
 v.field_sequence = 0
 v.field_position = nil
 v.field_velocity = nil
 v.field_torque = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetGroupCommand_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if len(v.field_position)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_position)),4) { return false }
 for e in v.field_position {
 item:=e
 if !write_Ros2Uwvm_fourier_bridgeMsgGroupValues(&item,w) { return false }
 }
 if len(v.field_velocity)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocity)),4) { return false }
 for e in v.field_velocity {
 item:=e
 if !write_Ros2Uwvm_fourier_bridgeMsgGroupValues(&item,w) { return false }
 }
 if len(v.field_torque)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_torque)),4) { return false }
 for e in v.field_torque {
 item:=e
 if !write_Ros2Uwvm_fourier_bridgeMsgGroupValues(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetGroupCommand_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_position=make([]Ros2Uwvm_fourier_bridgeMsgGroupValues,int(n),allocator)
 }
 for &e in v.field_position {
 {
 b,ok:=read_Ros2Uwvm_fourier_bridgeMsgGroupValues(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_velocity=make([]Ros2Uwvm_fourier_bridgeMsgGroupValues,int(n),allocator)
 }
 for &e in v.field_velocity {
 {
 b,ok:=read_Ros2Uwvm_fourier_bridgeMsgGroupValues(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_torque=make([]Ros2Uwvm_fourier_bridgeMsgGroupValues,int(n),allocator)
 }
 for &e in v.field_torque {
 {
 b,ok:=read_Ros2Uwvm_fourier_bridgeMsgGroupValues(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/SetGroupCommand_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=15572}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=15572}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetGroupCommand_Request value.
// @details Require the complete 20..15572-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,u32) {
 if len(bytes)<20 || len(bytes)>15572 { return Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetGroupCommand_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/SetGroupCommand_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/SetGroupCommand_Response.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetGroupCommand_Response in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetGroupCommand_Response.
// @details Exact identity UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response_Codec_Identity :: "UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetGroupCommand_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response_Native_Type :: "uwvm_fourier_bridge/srv/SetGroupCommand_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetGroupCommand_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/SetGroupCommand_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response {
 v: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetGroupCommand_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetGroupCommand_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/SetGroupCommand_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetGroupCommand_Response value.
// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetMotorCfgPd_Request value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..10384
// bytes and is identified by UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.kp: uwvm_fourier_bridge/msg/GroupValues; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/odin/API-CONTRACT.md
 field_kp: []Ros2Uwvm_fourier_bridgeMsgGroupValues,
 // @brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.kd: uwvm_fourier_bridge/msg/GroupValues; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/odin/API-CONTRACT.md
 field_kd: []Ros2Uwvm_fourier_bridgeMsgGroupValues,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetMotorCfgPd_Request in bytes.
// @details The inclusive bound is 10384 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request_Maximum_Wire_Bytes :: 10384
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.
// @details Exact identity UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request_Codec_Identity :: "UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request_Native_Type :: "uwvm_fourier_bridge/srv/SetMotorCfgPd_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request {
 v: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
 v.field_sequence = 0
 v.field_kp = nil
 v.field_kd = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if len(v.field_kp)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_kp)),4) { return false }
 for e in v.field_kp {
 item:=e
 if !write_Ros2Uwvm_fourier_bridgeMsgGroupValues(&item,w) { return false }
 }
 if len(v.field_kd)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_kd)),4) { return false }
 for e in v.field_kd {
 item:=e
 if !write_Ros2Uwvm_fourier_bridgeMsgGroupValues(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_kp=make([]Ros2Uwvm_fourier_bridgeMsgGroupValues,int(n),allocator)
 }
 for &e in v.field_kp {
 {
 b,ok:=read_Ros2Uwvm_fourier_bridgeMsgGroupValues(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_kd=make([]Ros2Uwvm_fourier_bridgeMsgGroupValues,int(n),allocator)
 }
 for &e in v.field_kd {
 {
 b,ok:=read_Ros2Uwvm_fourier_bridgeMsgGroupValues(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/SetMotorCfgPd_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=10384}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=10384}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetMotorCfgPd_Request value.
// @details Require the complete 16..10384-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,u32) {
 if len(bytes)<16 || len(bytes)>10384 { return Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetMotorCfgPd_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetMotorCfgPd_Response in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.
// @details Exact identity UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response_Codec_Identity :: "UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response_Native_Type :: "uwvm_fourier_bridge/srv/SetMotorCfgPd_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response {
 v: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/SetMotorCfgPd_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetMotorCfgPd_Response value.
// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetStandPose_Request value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes
// and is identified by UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/SetStandPose_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/SetStandPose_Request.delta_z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
 field_delta_z: f64,
 // @brief uwvm_fourier_bridge/srv/SetStandPose_Request.delta_pitch: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
 field_delta_pitch: f64,
 // @brief uwvm_fourier_bridge/srv/SetStandPose_Request.delta_yaw: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
 field_delta_yaw: f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetStandPose_Request in bytes.
// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request_Maximum_Wire_Bytes :: 32
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetStandPose_Request.
// @details Exact identity UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request_Codec_Identity :: "UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetStandPose_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request_Native_Type :: "uwvm_fourier_bridge/srv/SetStandPose_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetStandPose_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/SetStandPose_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request {
 v: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
 v.field_sequence = 0
 v.field_delta_z = 0
 v.field_delta_pitch = 0
 v.field_delta_yaw = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetStandPose_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_float64(w,v.field_delta_z) { return false }
 if !put_float64(w,v.field_delta_pitch) { return false }
 if !put_float64(w,v.field_delta_yaw) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetStandPose_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_delta_z=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_delta_pitch=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_delta_yaw=f64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/SetStandPose_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=32}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=32}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetStandPose_Request value.
// @details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request,u32) {
 if len(bytes)<32 || len(bytes)>32 { return Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetStandPose_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/SetStandPose_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/SetStandPose_Response.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetStandPose_Response in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetStandPose_Response.
// @details Exact identity UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response_Codec_Identity :: "UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetStandPose_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response_Native_Type :: "uwvm_fourier_bridge/srv/SetStandPose_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetStandPose_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/SetStandPose_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response {
 v: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetStandPose_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetStandPose_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/SetStandPose_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetStandPose_Response value.
// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetUpperFsmState_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
// and is identified by UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/SetUpperFsmState_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/SetUpperFsmState_Request.state: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_state: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetUpperFsmState_Request in bytes.
// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request_Maximum_Wire_Bytes :: 12
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetUpperFsmState_Request.
// @details Exact identity UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request_Codec_Identity :: "UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetUpperFsmState_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request_Native_Type :: "uwvm_fourier_bridge/srv/SetUpperFsmState_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetUpperFsmState_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/SetUpperFsmState_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request {
 v: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
 v.field_sequence = 0
 v.field_state = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetUpperFsmState_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_integer(w,u64(v.field_state),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetUpperFsmState_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_state=i32(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/SetUpperFsmState_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=12}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=12}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetUpperFsmState_Request value.
// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,u32) {
 if len(bytes)<12 || len(bytes)>12 { return Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetUpperFsmState_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/SetUpperFsmState_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/SetUpperFsmState_Response.error: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetUpperFsmState_Response in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetUpperFsmState_Response.
// @details Exact identity UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response_Codec_Identity :: "UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetUpperFsmState_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response_Native_Type :: "uwvm_fourier_bridge/srv/SetUpperFsmState_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetUpperFsmState_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/SetUpperFsmState_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response {
 v: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetUpperFsmState_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetUpperFsmState_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/SetUpperFsmState_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetUpperFsmState_Response value.
// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetVelocity_Request value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 40..40 bytes
// and is identified by UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/SetVelocity_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/SetVelocity_Request.vx: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/odin/API-CONTRACT.md
 field_vx: f64,
 // @brief uwvm_fourier_bridge/srv/SetVelocity_Request.vy: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/odin/API-CONTRACT.md
 field_vy: f64,
 // @brief uwvm_fourier_bridge/srv/SetVelocity_Request.yaw: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/odin/API-CONTRACT.md
 field_yaw: f64,
 // @brief uwvm_fourier_bridge/srv/SetVelocity_Request.duration: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/odin/API-CONTRACT.md
 field_duration: f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetVelocity_Request in bytes.
// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request_Maximum_Wire_Bytes :: 40
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetVelocity_Request.
// @details Exact identity UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request_Codec_Identity :: "UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetVelocity_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request_Native_Type :: "uwvm_fourier_bridge/srv/SetVelocity_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetVelocity_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/SetVelocity_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request {
 v: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
 v.field_sequence = 0
 v.field_vx = 0
 v.field_vy = 0
 v.field_yaw = 0
 v.field_duration = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetVelocity_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_float64(w,v.field_vx) { return false }
 if !put_float64(w,v.field_vy) { return false }
 if !put_float64(w,v.field_yaw) { return false }
 if !put_float64(w,v.field_duration) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetVelocity_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_vx=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_vy=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_yaw=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_duration=f64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/SetVelocity_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=40}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=40}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetVelocity_Request value.
// @details Require the complete 40..40-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request,u32) {
 if len(bytes)<40 || len(bytes)>40 { return Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetVelocity_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/SetVelocity_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/SetVelocity_Response.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetVelocity_Response in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetVelocity_Response.
// @details Exact identity UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response_Codec_Identity :: "UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetVelocity_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response_Native_Type :: "uwvm_fourier_bridge/srv/SetVelocity_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetVelocity_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/SetVelocity_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response {
 v: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetVelocity_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetVelocity_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/SetVelocity_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetVelocity_Response value.
// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetVelocitySource_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
// and is identified by UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/SetVelocitySource_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/SetVelocitySource_Request.source: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
 field_source: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetVelocitySource_Request in bytes.
// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request_Maximum_Wire_Bytes :: 12
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetVelocitySource_Request.
// @details Exact identity UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request_Codec_Identity :: "UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetVelocitySource_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request_Native_Type :: "uwvm_fourier_bridge/srv/SetVelocitySource_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetVelocitySource_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/SetVelocitySource_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request {
 v: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
 v.field_sequence = 0
 v.field_source = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetVelocitySource_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_integer(w,u64(v.field_source),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetVelocitySource_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_source=i32(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/SetVelocitySource_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=12}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=12}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetVelocitySource_Request value.
// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,u32) {
 if len(bytes)<12 || len(bytes)>12 { return Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/SetVelocitySource_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/SetVelocitySource_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/SetVelocitySource_Response.error: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/SetVelocitySource_Response in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/SetVelocitySource_Response.
// @details Exact identity UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response_Codec_Identity :: "UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/SetVelocitySource_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response_Native_Type :: "uwvm_fourier_bridge/srv/SetVelocitySource_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/SetVelocitySource_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/SetVelocitySource_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response {
 v: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/SetVelocitySource_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/SetVelocitySource_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response,bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/SetVelocitySource_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/SetVelocitySource_Response value.
// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 28..1084 bytes
// and is identified by UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request :: struct {
 // @brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.groups: string; 0..8 elements; each string is
 // 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/odin/API-CONTRACT.md
 field_groups: []string,
 // @brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.timeout_seconds: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/odin/API-CONTRACT.md
 field_timeout_seconds: f64,
 // @brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.poll_seconds: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/odin/API-CONTRACT.md
 field_poll_seconds: f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request in bytes.
// @details The inclusive bound is 1084 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request_Maximum_Wire_Bytes :: 1084
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.
// @details Exact identity UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request_Codec_Identity :: "UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request_Native_Type :: "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request :: proc() -> Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request {
 v: Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
 v.field_sequence = 0
 v.field_groups = nil
 v.field_timeout_seconds = 0
 v.field_poll_seconds = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if len(v.field_groups)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_groups)),4) { return false }
 for e in v.field_groups {
 if !put_string(w,e,128) { return false }
 }
 if !put_float64(w,v.field_timeout_seconds) { return false }
 if !put_float64(w,v.field_poll_seconds) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
    bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_groups=make([]string,int(n),allocator)
 }
 for &e in v.field_groups {
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 e=b
 }
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_timeout_seconds=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_poll_seconds=f64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1084}
 if !write_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1084}
 if !write_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request value.
// @details Require the complete 28..1084-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
    u32) {
 if len(bytes)<28 || len(bytes)>1084 { return Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..137 bytes
// and is identified by UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response :: struct {
 // @brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.error: string; each string is 0..128 bytes;
 // strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.complete: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/odin/API-CONTRACT.md
 field_complete: bool,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response in bytes.
// @details The inclusive bound is 137 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response_Maximum_Wire_Bytes :: 137
// @brief Canonical codec identity of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.
// @details Exact identity UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response_Codec_Identity :: "UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f"
// @brief Original ROS type name for uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response_Native_Type :: "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response"
// @brief Selected original native identity for uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response :: proc() -> Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response {
 v: Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
 v.field_status = 0
 v.field_error = ""
 v.field_complete = false
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
// operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_bool(w,v.field_complete) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response,
    bool) {
 v:=init_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_complete=bool(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response :: proc(v: ^Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=137}
 if !write_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=137}
 if !write_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response value.
// @details Require the complete 9..137-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response,
    u32) {
 if len(bytes)<9 || len(bytes)>137 { return Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response{},reader.code }
 return value,0
}
